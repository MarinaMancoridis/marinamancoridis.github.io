require 'httparty'
require 'jekyll'
require 'nokogiri'
require 'time'

# Fetches an RSS feed at build time and exposes it as site.data[<key>] so a
# page can render a preview of an externally hosted blog. Any failure leaves
# the data empty rather than breaking the build.
module BlogPreview
  class BlogPreviewGenerator < Jekyll::Generator
    safe true
    priority :high

    MAX_POSTS = 3

    def generate(site)
      Array(site.config['blog_previews']).each do |src|
        key = src['key']
        next if key.nil?

        site.data[key] = { 'posts' => [] }
        begin
          fetch(site, src, key)
        rescue StandardError => e
          Jekyll.logger.warn 'BlogPreview:', "could not fetch #{src['rss_url']}: #{e.message}"
        end
      end
    end

    private

    def fetch(site, src, key)
      response = HTTParty.get(src['rss_url'], timeout: 10)
      return unless response.code == 200

      feed = Nokogiri::XML(response.body)
      limit = src['limit'] || MAX_POSTS

      posts = feed.xpath('//channel/item').first(limit).map do |item|
        {
          'title' => text(item, 'title'),
          'url' => text(item, 'link'),
          'summary' => summary_for(item),
          'image' => item.at_xpath('enclosure')&.attr('url'),
          'date' => parse_date(text(item, 'pubDate')),
        }
      end

      site.data[key] = {
        'title' => text(feed.at_xpath('//channel'), 'title'),
        'description' => text(feed.at_xpath('//channel'), 'description'),
        'posts' => posts,
      }
      Jekyll.logger.info 'BlogPreview:', "fetched #{posts.size} post(s) from #{src['rss_url']}"
    end

    def text(node, tag)
      node&.at_xpath(tag)&.text&.strip
    end

    # Substack puts the full post HTML in <description>; keep the opening line.
    def summary_for(item)
      raw = text(item, 'description').to_s
      plain = Nokogiri::HTML(raw).text.gsub(/\s+/, ' ').strip
      return plain if plain.length <= 180

      "#{plain[0, 180].rpartition(' ').first}…"
    end

    def parse_date(value)
      Time.parse(value) if value
    rescue ArgumentError
      nil
    end
  end
end
