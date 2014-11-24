require 'nokogiri'
require 'open-uri'
require 'pry'
require 'rake'
#require_relative '../../app/models/house'

town = "Los Angeles"
area = "losangeles"
region = "lac/"
c_search = "los%20angeles"

url = 'http://'+area+'.craigslist.org/search/'+region+'apa?query='+c_search+''
url2 = 'http://'+area+'.craigslist.org/search/'+region+'apa?s=100&query='+c_search+''
url3 = 'http://'+area+'.craigslist.org/search/'+region+'apa?s=200&query='+c_search+''
url4 = 'http://'+area+'.craigslist.org/search/'+region+'apa?s=300&query='+c_search+''
url5 = 'http://'+area+'.craigslist.org/search/'+region+'apa?s=400&query='+c_search+''
url6 = 'http://'+area+'.craigslist.org/search/'+region+'apa?s=500&query='+c_search+''

puts url
puts url2 
puts url3

# using Nokogiri to scrape
doc = Nokogiri::HTML(open(url))
doc = Nokogiri::HTML(open(url2))
doc = Nokogiri::HTML(open(url3))
doc = Nokogiri::HTML(open(url4))
doc = Nokogiri::HTML(open(url5))
doc = Nokogiri::HTML(open(url6))

# declaring a variable and setting it equal to the css class
houses = doc.css('.l2')

# first array contains the numbers
br0 = []
# second "br" array is the average price
br0_avg = []

br1 = []
br1_avg = []

br2 = []
br2_avg = []

br3 = []
br3_avg = []

br4 = []
br4_avg = []

br5 = []
br5_or_more_avg = []

# looping over the houses
houses.each do |house|
  begin
  # the raise and rescue work together to make sure the loop continues
    raise if !NoMethodError
  # name of the price value
  price = house.at_css('.price').text
  price.slice!(0)
  num = price.to_i
  
  # selecting the housing class and finding out bedrooms
  bedroom = house.at_css('.housing').text.slice!(2..4)
  
  # pushing the bedrooms to their respective arrays
  if !bedroom.nil?
    if !bedroom.include?('br') 
      br0 << num
    elsif
      bedroom.include?('1br')
      br1 << num
    elsif
      bedroom.include?('2br')
      br2 << num
    elsif
      bedroom.include?('3br')
      br3 << num
    elsif
      bedroom.include?('4br')
      br4 << num
    elsif
      bedroom.include?('5br' || '6br')
      br5 << num
    end
  end

  rescue
    puts "Sorry bud, we got problems"
  end

end

# loops over the array and divides total price by num of houses
br0.each do |num|
  if br0.length != 0
  # setting the denominator
  bottom = br0.length
  # adding up the total since they are all integers
  top = br0.inject {|sum, n| sum + n}
  # dividing the number to get an average
  divide = (top / bottom)
  br0_avg << divide
  end
end

br1.each do |num|
  if br1.length != 0
  bottom = br1.length
  top = br1.inject {|sum, n| sum + n}
  divide = (top / bottom)
  br1_avg << divide
  end
end

br2.each do |num|
  if br2.length != 0
  bottom = br2.length
  top = br2.inject {|sum, n| sum + n}
  divide = (top / bottom)
  br2_avg << divide
  end
end

br3.each do |num|
  if br3.length != 0
  bottom = br3.length
  top = br3.inject {|sum, n| sum + n}
  divide = (top / bottom)
  br3_avg << divide
  end
end

br4.each do |num|
  if br4.length != 0
  bottom = br4.length
  top = br4.inject {|sum, n| sum + n}
  divide = (top / bottom)
  br4_avg << divide
  end
end

br5.each do |num|
  if br5.length != 0
  bottom = br5.length
  top = br5.inject {|sum, n| sum + n}
  divide = (top / bottom)
  br5_or_more_avg << divide
  end
end

# each value within the array gets reassigned the average value
# thus, we select just the first value 
  studio = br0_avg.first
  oneBR = br1_avg.first
  twoBR = br2_avg.first
  threeBR = br3_avg.first
  fourBR = br4_avg.first
  fiveBR = br5_or_more_avg.first

  puts studio
  puts oneBR
  puts twoBR
  puts threeBR
  puts fourBR
  puts fiveBR

houses_url = "http://"+area+".craigslist.org/search/"+region+"rea?query="+c_search+"&hasPic=1&housing_type=6"
puts houses_url
doc = Nokogiri::HTML(open(houses_url))
houses = doc.css('.tdxt')

  houses.each do |house|
  if !house.at_css('.price').nil? and !house.at_css('small').nil? and !house.at_css('.housing').nil?  
    title = house.at_css('.pl .hdrlnk').text
    url = "http://losangeles.craigslist.org"+house.at_css('.pl .hdrlnk')[:href]+""
    cost = house.at_css('.price').text
    cost.slice!(0)
    price = cost.to_i
    # location = house.at_css('small').text
    beds = house.at_css('.housing').text.slice!(2..4)
    if !beds.include?('br')
      beds = 0
      income = studio
      # puts income
    elsif beds.include?('1br')
      beds = 1
      income = oneBR
    elsif beds.include?('2br')
      beds = 2
      income = twoBR
    elsif beds.include?('3br')
      beds = 3
      income = threeBR
    elsif beds.include?('4br')
      beds = 4
      income = fourBR
    elsif beds.include?('5br' || '6br')
      beds = 5
      income = fiveBR
    end
    # puts "#{title}- #{url_link}- #{price}:#{location} #{beds}"

    House.create(
      city: town,
      address: url,
      price: price,
      bedrooms: beds,
      income: income,
      taxes: 2000,
      units: 1,
      title: title
    )
  
  end
end
