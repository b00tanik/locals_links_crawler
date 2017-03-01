require "spec_helper"

describe LocalsLinksCrawler do
  it "has a version number" do
    expect(LocalsLinksCrawler::VERSION).not_to be nil
  end
  
  context 'From thelocals.ru' do
    subject { LocalsLinksCrawler::Crawler.new('https://thelocals.ru') }
    
    it "gets images" do
      expect(subject.image_links).not_to be_empty
    end
  end
end
