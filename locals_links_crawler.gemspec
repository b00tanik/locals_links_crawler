# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'locals_links_crawler/version'

Gem::Specification.new do |spec|
  spec.name          = "locals_links_crawler"
  spec.version       = LocalsLinksCrawler::VERSION
  spec.authors       = ["Ivaschenko Alexandr"]
  spec.email         = ["alex.ivasch@gmail.com"]

  spec.summary       = %q{Gem for get image links from page}
  spec.description   = %q{Usage:  `LocalsLinksCrawler::Crawler.new('https://thelocals.ru').image_links` }

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.require_paths = ["lib"]
  
  spec.add_development_dependency "httparty", "~> 0.14"
  spec.add_development_dependency "nokogiri", "~> 1.7"
end
