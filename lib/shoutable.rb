module Shoutable
  BASE_URL = "http://shoutkey.com/new?url="
  def shoutkey
    uri_esc = URI.escape(@url)
    hostiledeveloper = Nokogiri::HTML(open("#{BASE_URL}#{uri_esc}"))
    shoutkey = hostiledeveloper.css('div.hero-unit h1 a').text
  end
end
