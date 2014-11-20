desc "get average rent price based on number of bedrooms"
task :fetch_income => :environment do
  require 'nokogiri'
  require 'open-uri'
  require 'awesome_print'
  require 'pry'
  require 'mechanize'

# taking the first 5 pages from CL and scraping it
url = 'http://sfbay.craigslist.org/search/eby/apa?query=oakland&minSqft=0'
url2 = 'http://sfbay.craigslist.org/search/eby/apa?minSqft=0&query=oakland&s=100'
url3 = 'http://sfbay.craigslist.org/search/eby/apa?minSqft=0&query=oakland&s=200'
url4 = 'http://sfbay.craigslist.org/search/eby/apa?minSqft=0&query=oakland&s=300'
url5 = 'http://sfbay.craigslist.org/search/eby/apa?minSqft=0&query=oakland&s=400'
url6 = 'http://sfbay.craigslist.org/search/eby/apa?minSqft=0&query=oakland&s=400'

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
puts br0_avg.first
puts br1_avg.first
puts br2_avg.first
puts br3_avg.first
puts br4_avg.first
puts br5_or_more_avg.first

end