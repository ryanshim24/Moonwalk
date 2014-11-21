desc "get average rent price based on number of bedrooms"
task :fetch_income => :environment do
  require_relative 'fetch_income'
  require_relative 'find_apartment'
end