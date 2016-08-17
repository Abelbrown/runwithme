# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Event.destroy_all
User.destroy_all

user_1 = User.create!(email: "coline@gmail.com", password: "testtest")
user_2 = User.create!(email: "benjamin@gmail.com", password: "testtest")
user_3 = User.create!(email: "abel@gmail.com", password: "testtest")
user_4 = User.create!(email: "joe@gmail.com", password: "testtest")

attributes = [
  {
    user_id: user_1.id,
    name: "Course au bord du canal Saint Martin",
    datetime: DateTime.new(2016, 8, 20),
    public: false,
    kind: "Perf run",
    description: "Course intensive avec un objectif temps déterminé",
    place_name: "Canal Saint Martin, Paris",
    time_goal: 55,
    nb_of_participants: 5
  },
  {
    user_id: user_2.id,
    name: "Marche rapide",
    datetime: DateTime.new(2016, 9, 10),
    public: true,
    kind: "Chatting run",
    description: "Une belle marche dans le quartier populaire d'Oberkampf",
    place_name: "Oberkampf",
    address: "16 villa gaudelet, Paris",
    trail_goal: 5,
    nb_of_participants: 3
  },
  {
    user_id: user_1.id,
    name: "Une course semi intensive ",
    datetime: DateTime.new(2016, 12, 12),
    public: true,
    kind: "Chatting run",
    place_name: "Buttes Chaumont",
    time_goal: 45,
    nb_of_participants: 5
  },
  {
    user_id: user_2.id,
    name: "Semi marathon ",
    datetime: DateTime.new(2016, 9, 30),
    public: true,
    kind: "Perf run",
    description: "Let's run run run",
    place_name: "Place de la Bastille",
    trail_goal: 21,
    nb_of_participants: 4
  }
]

attributes.each do |attribute|
  Event.create!(attribute)
end
