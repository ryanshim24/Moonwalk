require 'nokogiri'
require 'open-uri'
# require 'awesome_print'
require 'pry'
require 'rake'

town = "oakland"
url = "http://sfbay.craigslist.org/search/eby/rea?query="+town+"&hasPic=1&housing_type=6"
url2 ="http://sfbay.craigslist.org/search/eby/rea?query="+town+"&hasPic=1&housing_type=6&s=100"
doc = Nokogiri::HTML(open(url))
houses = doc.css('.txt')

  houses.each do |house|
  if !house.at_css('.price').nil? and !house.at_css('small').nil? and !house.at_css('.housing').nil?  
    title = house.at_css('.pl .hdrlnk').text
    url_link = house.at_css('.pl .hdrlnk')[:href]
    price = house.at_css('.price').text
    location = house.at_css('small').text
    beds = house.at_css('.housing').text.slice!(2..4)
    puts "#{title}- #{url_link}- #{price}:#{location} #{beds}"
    income = @studio
  end
end