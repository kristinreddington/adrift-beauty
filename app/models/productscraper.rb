require 'sinatra/base'
require 'open-uri'
require 'nokogiri'

class ProductScraper < ActiveRecord::Base

  attr_accessor :image_url
  @url = ''

  def self.scrape_product(url)
    doc = Nokogiri::HTML(open(url))
    @url = doc.search('#search').search("img").attr("src").text
  end

  def self.url
    @url
  end

end
