desc "get average rent price based on number of bedrooms"
task :find_apt => :environment do
  require_relative 'find_apartment_la'
  require_relative 'find_apartment_lv'
  require_relative 'find_apartment_oak'
  require_relative 'find_apartment_port'
  require_relative 'find_apartment_sea'
  require_relative 'find_apartment_sf'
end