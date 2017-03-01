require_relative 'nokogiri_parser'

module LocalsLinksCrawler
  class Crawler
    include HTTParty
    parser NokogiriParser
    
    def initialize(url)
      @url = url
    end
    
    def image_links
      html.css('img').inject([]) do |links, image|
        links << image['src']
      end.compact
    end
    
    
    private
    
    def html
      # @TODO не игнорировать проверку ssl сертификата.
      @html ||= self.class.get(@url, verify: false)
    end
  end
end
