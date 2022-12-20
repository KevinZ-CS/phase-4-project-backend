# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "🌱 Seeding data..."

Game.create(title: "Breath of the Wild", platform: "Switch", genre: "Action-adventure", img_url: 'https://www.gamespot.com/a/uploads/scale_landscape/1585/15855271/3389187-breath-of-the-wild-walkthrough.jpg', price: 60)
Game.create(title: "Final Fantasy VII", platform: "Playstation", genre: "RPG", img_url: 'https://images.nintendolife.com/f344487b844dd/final-fantasy-vii-cover.cover_large.jpg', price: 60)
Game.create(title: "Mario Kart", platform: "Switch", genre: "Racing", img_url: 'https://www.mobygames.com/images/covers/l/496567-mario-kart-8-deluxe-nintendo-switch-front-cover.jpg', price: 60)
Game.create(title: "Pokemon Violet", platform: "Switch", genre: "RPG", img_url: 'https://assets-prd.ignimgs.com/2022/08/03/pokemon-violet-1659542326365.jpg', price: 60)
Game.create(title: "Pokemon Scarlet", platform: "Switch", genre: "RPG", img_url: 'https://assets-prd.ignimgs.com/2022/08/03/pokemon-scarlet-1659542292648.jpg', price: 60)

# Review.create(score: rand(1..10), comment: Faker::Lorem.sentence, game_id: 1, user_id: 1)
# Review.create(score: rand(1..10), comment: Faker::Lorem.sentence, game_id: 2, user_id: 1)
# Review.create(score: rand(1..10), comment: Faker::Lorem.sentence, game_id: 3, user_id: 1)
# Review.create(score: rand(1..10), comment: Faker::Lorem.sentence, game_id: 4, user_id: 1)
# Review.create(score: rand(1..10), comment: Faker::Lorem.sentence, game_id: 5, user_id: 1)

puts "🌱 Done seeding!"