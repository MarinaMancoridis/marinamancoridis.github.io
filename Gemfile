source "https://rubygems.org"

ruby "3.2.0"

gem "jekyll", "~> 4.4"

# Required for google-scholar-citations.rb plugin
gem "activesupport"

group :jekyll_plugins do
    # gem 'jekyll-feed'
    # gem 'jekyll-sitemap'
    # gem 'jekyll-paginate-v2'
    # gem 'jekyll-scholar' # Add this line here
    # gem 'jekyll-get-json' # Add this line here
    # gem 'jekyll-email-protect'
    # gem 'jekyll-archives'
    # gem 'jekyll-imagemagick'
    gem 'classifier-reborn'
    gem 'jekyll-archives'
    gem 'jekyll-email-protect'
    gem 'jekyll-feed'
    gem 'jekyll-get-json'
    gem 'jekyll-imagemagick'
    gem 'jekyll-jupyter-notebook'
    gem 'jekyll-link-attributes'
    gem 'jekyll-minifier'
    gem 'jekyll-paginate-v2'
    gem 'jekyll-regex-replace'
    gem 'jekyll-scholar'
    gem 'jekyll-sitemap'
    gem 'jekyll-tabs'
    gem 'jekyll-toc'
    gem 'jekyll-twitter-plugin'
    gem 'jemoji'
    gem 'unicode_utils'
    gem 'webrick'
end

group :other_plugins do
    gem 'feedjira'  # Add this - required by your external-posts.rb plugin
    gem 'httparty'  # You might need this too if your plugin uses it
    gem 'css_parser'
end

platforms :mingw, :x64_mingw, :mswin, :jruby do
  gem "tzinfo", ">= 1", "< 3"
  gem "tzinfo-data"
end

gem "wdm", "~> 0.1.1", :platforms => [:mingw, :x64_mingw, :mswin]
gem "http_parser.rb", "~> 0.6.0", :platforms => [:jruby]