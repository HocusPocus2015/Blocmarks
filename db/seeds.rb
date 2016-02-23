# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

# user 1
example1 = User.new(
  email: 'alicesuckling@live.co.uk',
  password: 'Test1234',
)
example1.save

# user 2
example2 = User.new(
  email: 'secondexample@bloc.co.uk',
  password: 'Test1234'
)
example2.save

users = User.all

#Create topics
5.times do
  topic = Topic.create!(
    user_id: users.sample,
    title: Faker::Lorem.word
  )
end

topics = Topic.all

# Create bookmarks
30.times do
  bookmark = Bookmark.create!(
    topic: topics.sample,
    url: Faker::Internet.url
  )
end

bookmarks = Bookmark.all

puts "#{User.count} users created."
puts "#{Topic.count} topics created."
puts "#{Bookmark.count} bookmarks created."
