# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

message_list = [
  [ "Someday I will be here again"],
  [ "This place makes me forget all the sadness"],
  [ "No regrets"],
  [ "I want to shout love to my famiy"],
  [ "I will bring my dad here someday"],
  [ " Most beautiful place I've ever seen"],
  [ "I wish I can fly"],
  [ "Someday"]


]



$i = 1
$num = 57

while $i < $num  do
  content = message_list.sample
    Message.create( content: content[0], park_id: $i, user_id: rand(8..11))
   $i +=1
end
