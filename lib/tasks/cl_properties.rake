desc "Fetch product prices"
task :fetch_properties => :environment do
  require 'nokogiri'
  require 'open-uri'
  require 'awesome_print'
  require 'pry'

  town = "oakland"
  url = "http://sfbay.craigslist.org/search/eby/rea?query="+town+"&hasPic=1&housing_type=6"
  doc = Nokogiri::HTML(open(url))
  houses = doc.css('.txt')

  # Product.find_all_by_price(nil).each do |product|

    houses.each do |house|
      # binding.pry
       
    if !house.at_css('.price').nil? and !house.at_css('small').nil? and !house.at_css('.housing').nil?  
      title = house.at_css('.pl .hdrlnk').text
      url_link = house.at_css('.pl .hdrlnk')[:href]
      price = house.at_css('.price').text
      location = house.at_css('small').text
      beds = house.at_css('.housing').text.slice!(2..4)
      puts "#{title}- #{url_link}- #{price}:#{location} #{beds}"  

    House.create (
      city: town,
      address: title,
      price: price,
      bedrooms: beds,
      income: $globalvars["studio_rent"]
      taxes: 0,
      units: 1
      )
    end
  end
end