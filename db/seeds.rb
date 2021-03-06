# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Event.destroy_all
User.destroy_all

user_1 = User.create!(email: "coline@gmail.com", password: "testtest", first_name: "coline", last_name: "colnat", job_title: "Web dev" )
puts "#{user_1} a bien été créé'"
user_2 = User.create!(email: "benjamin@gmail.com", password: "testtest", first_name: "benjamin" , last_name: "lyphoudt", job_title: "webmaster" )
puts "#{user_2} a bien été créé'"
user_3 = User.create!(email: "abdel@gmail.com", password: "testtest", first_name: "abdel", last_name: "malik" , job_title: "Lawyer" )
puts "#{user_3} a bien été créé'"
user_4 = User.create!(email: "joe@gmail.com", password: "testtest", first_name: "joe", last_name: "star" , job_title: "Accountant")
puts "#{user_4} a bien été créé'"

attributes = [
  {
    user_id: user_1.id,
    type_of: "Endurance run",
    datetime: DateTime.new(2016, 8, 20),
    private: true,
    description: "Course intensive avec un objectif temps déterminé",
    meeting_point: "Canal Saint Martin",
    time_goal: 55,
  },
  {
    user_id: user_2.id,
    type_of: "Speed walk",
    datetime: DateTime.new(2016, 9, 10),
    private: false,
    description: "Une belle marche dans le quartier populaire d'Oberkampf",
    meeting_point: "metro Oberkampf",
    address: "16 villa gaudelet, Paris",
    trail_goal: 5,
  },
  {
    user_id: user_1.id,
    type_of: "Cool run",
    datetime: DateTime.new(2016, 12, 12),
    private: false,
    meeting_point: "Buttes Chaumont",
    time_goal: 45,
  },
  {
    user_id: user_2.id,
    type_of: "Endurance run",
    datetime: DateTime.new(2016, 9, 30),
    private: false,
    description: "Let's run run run",
    address: "Place de la Bastille",
    meeting_point: "Place de la Bastille",
    trail_goal: 21,
  }
]

attributes.each do |attribute|
  Event.create!(attribute)
  puts " l'event a bien été créé"
end
