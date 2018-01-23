# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do |user|
  User.create!(email: "email_#{user + 1}@email.com", first_name: "FirstName_#{user + 1}", last_name: "LastName_#{user + 1}", password: "asdfasdf")
end


1.times do |category|
  Category.create!(name: "Category", user_id: 1)
end

puts "1 category created"

2.times do |deck|
  Deck.create!(name: "Deck#{deck+1}", category_id: 1)
end

3.times do |card|
  Card.create!(question: "Question", answer: "Answer", deck_id: 1)
end

1.times do |card| 
  Card.create!(question: "How do you quit and save at the same time?", answer: ":wq", deck_id: 1) 
end

