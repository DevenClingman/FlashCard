10.times do |user|
  User.create!(email: "user#{user}@user.com", first_name: "firstname#{user}", last_name: "lastname#{user}", password: "asdfasdf")
end

puts "10 users created"
