# LocalsLinksCrawler

Gem for crawl image links from page

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'locals_links_crawler'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install locals_links_crawler

## Usage

```ruby
LocalsLinksCrawler::Crawler.new('https://thelocals.ru').image_links
```

