# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "🌱 Seeding data..."

Game.create(title: "Breath of the Wild", platform: "Switch", genre: "Action-adventure", img_url: 'https://assets.nintendo.com/image/upload/c_fill,w_1200/q_auto:best/f_auto/dpr_2.0/ncom/en_US/games/switch/t/the-legend-of-zelda-breath-of-the-wild-switch/hero', price: 60)
Game.create(title: "Final Fantasy VII", platform: "Playstation", genre: "RPG", img_url: 'https://assets.nintendo.com/image/upload/ar_16:9,b_auto:border,c_lpad/b_white/f_auto/q_auto/dpr_2.625/c_scale,w_400/ncom/en_US/games/switch/f/final-fantasy-vii-switch/hero', price: 60)
Game.create(title: "Mario Kart", platform: "Switch", genre: "Racing", img_url: 'https://assets.nintendo.com/image/upload/c_fill,w_1200/q_auto:best/f_auto/dpr_2.0/ncom/en_US/games/switch/m/mario-kart-8-deluxe-switch/hero', price: 60)
Game.create(title: "Pokemon Violet", platform: "Switch", genre: "RPG", img_url: 'https://assets-prd.ignimgs.com/2022/08/03/pokemon-violet-1659542326365.jpg', price: 60)
Game.create(title: "Pokemon Scarlet", platform: "Switch", genre: "RPG", img_url: 'https://assets-prd.ignimgs.com/2022/08/03/pokemon-scarlet-1659542292648.jpg', price: 60)

# # run a loop 50 times
# 5.times do
#   # create a game with random data
#   game = Game.create(
#     title: Faker::Game.title,
#     genre: Faker::Game.genre,
#     platform: Faker::Game.platform,
#     price: rand(0..60) # random number between 0 and 60
#   )

#   # create between 1 and 5 reviews for each game
#   rand(1..5).times do
#     Review.create(
#       score: rand(1..10),
#       comment: Faker::Lorem.sentence,
#       game_id: game.id # use the ID (primary key) of the game as the foreign key
#     )
#   end
# end

puts "🌱 Done seeding!"