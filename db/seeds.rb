# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
rng = Random.new
 +30.times do |i|
  topic = Topic.create title: "Topic no. #{i+1}", description: "這是用種子建立的第 #{i+1} 個 topic"
  votes_count = rng.rand(30)
  votes_count.times { topic.votes.create }
end

puts "Seeding completed"
