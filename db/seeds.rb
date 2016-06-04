# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

message_list = [
  [ "A very beautiful place",1, 2],

]




message_list.each do |content, park_id, user_id|
  Message.create( content: content, park_id: park_id, user_id: user_id)
end
