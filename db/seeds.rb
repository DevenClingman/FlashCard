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


10.times do |category|
  Category.create(name: "My Category #{category + 1}", user_id: 1)
end

puts "10 categories created"

10.times do |deck| 
  Deck.create(name: "Deck Number #{deck + 1}", category_id: 1)
end

puts "10 decks created"

25.times do |card| 
  Card.create(question: "Question number #{card + 1}", answer: "Answer number #{card + 1}", deck_id: 1)
end

puts "25 cards created"

  # create_table "users", force: :cascade do |t|
  #   t.string "email", default: "", null: false
  #   t.string "first_name", default: "", null: false
  #   t.string "last_name", default: "", null: false
  #   t.string "encrypted_password", default: "", null: false
  #   t.string "reset_password_token"
  #   t.datetime "reset_password_sent_at"
  #   t.datetime "remember_created_at"
  #   t.integer "sign_in_count", default: 0, null: false
  #   t.datetime "current_sign_in_at"
  #   t.datetime "last_sign_in_at"
  #   t.inet "current_sign_in_ip"
  #   t.inet "last_sign_in_ip"
  #   t.datetime "created_at", null: false
  #   t.datetime "updated_at", null: false
  #   t.index ["email"], name: "index_users_on_email", unique: true
  #   t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
