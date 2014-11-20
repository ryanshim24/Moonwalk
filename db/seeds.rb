# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Favorite.delete_all
User.delete_all

Favorite.create([{roi: "234234234"},
  {roi: "1234"},
  {roi: "92934"}
])

User.create([
  {username: "ryanshim", password: "hellohello"}
])

User.first.favorites << Favorite.first
