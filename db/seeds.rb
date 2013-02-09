# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts 'SETTING UP DEFAULT USER LOGIN'
user = User.create! :name => 'sysadmin', :email => 'sysadmin@example.com', :password => '!qaz2wsx', :password_confirmation => '!qaz2wsx'
user2 = User.create! :name => 'mgrlv1', :email => 'mgrlv1@example.com', :password => '!qaz2wsx', :password_confirmation => '!qaz2wsx'
puts 'New user created: ' << user.name

puts 'Setting up default project level'
lv1 = ProjectLevel.create! :name => "All New"
lv2 = ProjectLevel.create! :name => "Innovation"
lv3 = ProjectLevel.create! :name => "Cosmetics"
