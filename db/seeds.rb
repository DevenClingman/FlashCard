# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


10.times do |category|
  Category.create(name: "My Category #{category + 1}")
end

puts "10 categories created"

10.times do |deck| 
  Deck.create(name: "Deck Number #{deck + 1}")
end

puts "10 decks created"

25.times do |card| 
  Card.create(question: "Question number #{card + 1}", answer: "Answer number #{card + 1}")
end

puts "25 cards created"
