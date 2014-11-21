desc "get average rent price based on number of bedrooms"
task :find_apt => :environment do
  require_relative 'find_apartment'
end