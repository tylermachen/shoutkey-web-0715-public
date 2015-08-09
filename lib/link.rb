require 'nokogiri'
require 'open-uri'
require_relative '../lib/shoutable'

class Link
  include Shoutable
  
  def initialize(url)
    @url = url
  end

  def url
    @url
  end
end
