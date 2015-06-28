# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'

# Create users
5.times do
	user = User.new(
		name: Faker::Name.name,
		email: Faker::Internet.email,
		)
	user.save!
end
users = User.all

# Create lists
10.times do
	List.create!(
		name: Faker::Lorem.word,
		user: users.sample
		)
end
lists = List.all

# Create items
50.times do
	Item.create!(
		name: Faker::Lorem.sentence,
		list: lists.sample
		)
end
items = Item.all

# Report upon completion

puts "Seed finished"
puts "#{User.count} users created"
puts "#{List.count} lists created"
puts "#{Item.count} items created"

