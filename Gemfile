source "https://rubygems.org"

ruby "3.2.0"

gem "jekyll", "~> 4.4"
gem "webrick"

# Required for google-scholar-citations.rb plugin
gem "activesupport"

group :jekyll_plugins do
    gem 'jekyll-feed'
    gem 'jekyll-sitemap'
end

group :other_plugins do
    gem 'feedjira'  # Add this - required by your external-posts.rb plugin
    gem 'httparty'  # You might need this too if your plugin uses it
end

platforms :mingw, :x64_mingw, :mswin, :jruby do
  gem "tzinfo", ">= 1", "< 3"
  gem "tzinfo-data"
end

gem "wdm", "~> 0.1.1", :platforms => [:mingw, :x64_mingw, :mswin]
gem "http_parser.rb", "~> 0.6.0", :platforms => [:jruby]