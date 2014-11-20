# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Favorite.delete_all
User.delete_all
House.delete_all

House.create([
  {
    city: "Oakland",
    address: "5823 DOVER St",
    price: 549000,
    bedrooms: 3,
    income: 2860,
    taxes: 3400,
    units: 1
  },
  {
    city: "Oakland",
    address: "5655 ADELINE St",
    price: 449000,
    bedrooms: 3,
    income: 2860,
    taxes: 1274,
    units: 1
    },
    {
    city: "Oakland",
    address: "592 62ND St",
    price: 599000,
    bedrooms: 5,
    income: 4900,
    taxes: 1555,
    units: 1
    }]) 

Favorite.create([{roi: "234234234"},
  {roi: "1234"},
  {roi: "92934"}
])

User.create([
  {username: "ryanshim", password: "hellohello"}
])

User.first.favorites << Favorite.first
