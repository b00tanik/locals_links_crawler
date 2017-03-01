require 'httparty'
require 'nokogiri'

class NokogiriParser < HTTParty::Parser
  def html
    Nokogiri::HTML(body)
  end
end