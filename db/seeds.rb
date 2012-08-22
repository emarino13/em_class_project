# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create! do |user|
  user.full_name = 'Elaine Marino'
  user.email = 'elaine.c.marino@gmail.com'
  user.password = 'boulder'
  user.password_confirmation = 'boulder'
end


Album.create!(name: 'Liscensed to Ill', year: 1986)
Album.create!(name: 'Paul\'s Boutique', year: 1989)
Album.create!(name: 'Check Your Head', year: 1992)
Album.create!(name: 'Ill Communication', year: 1994)
Album.create!(name: 'Hello Nasty', year: 1998)
Album.create!(name: 'To the 5 Boroughs', year: 2004)
Album.create!(name: 'The Mix-up', year: 2007)
Album.create!(name: 'Hot Sauce Committee Part Two', year: 2011)
