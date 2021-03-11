# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require 'rest-client'
require 'pry'




# ***** CREATE NEWS STORIES *****


# All news story data retrieved and successfully created here:
# response = RestClient.get 'https://newsapi.org/v2/top-headlines?country=us&category=sports&apiKey=c57acc4703364867840f0f90de339cf3'
# response_body = response.body
# stories = JSON.parse(response_body)

# puts = 'creating story from news API'

# stories["articles"].each do |article|
#    Story.create(
#       source: article["source"]["name"],
#       author: article["author"],
#       title: article["title"],
#       description: article["description"],
#       url: article["url"],
#       url_to_image: article["urlToImage"],
#       published_at: article["publishedAt"],
#       content: article["content"]
#    )
# end



# ***** GET ALL GAME AND ODDS DATA ******
# puts 'destroying games'
# puts 'destroying posts'


# Game, team, leagues and odds data retreived
# response = RestClient.get 'https://api.the-odds-api.com/v3/odds/?apiKey=e9f576a0a8b58da82e7708ac0b19346e&sport=icehockey_nhl&region=us&mkt=h2h&dateFormat=iso'
# response_body = response.body
# games = JSON.parse(response_body)
# byebug

# puts 'creating new games'
# games["data"].each do |single_game|
#    Game.create(
#       sport_key: single_game["sport_key"],
#       sport_nice: single_game["sport_nice"],
#       home_team: single_game["home_team"],
#       away_team: single_game["teams"].find{|t| t != single_game["home_team"]},
#       commence_time: single_game["commence_time"]
#    )
# end


# ******* Create odds through Sites *********
# puts 'destroying current Sites'
# Site.destroy_all

# create while loop to access each games site array
# puts 'creating sites'
# i = 0
# while (i < games["data"].length)
#    games["data"][i]["sites"].each do |s|
#       Site.create(
#          site_key: s["site_key"],
#          site_nice: s["site_nice"],
#          last_update: s["last_update"],
#          odds: s["odds"]["h2h"].join(", "),
#          game_id: (i + 1)
#       )
#    end
#    i += 1
# end

# game_id_bag = Game.all.collect{|g| g.id}
# game_id_bag.each do |id|
#    Site.create(
#       site_key: "Site_key",
#       site_nice: "Site Name",
#       last_update: "Last time updated",
#       odds: "odds",
#       game_id: id
#    )
# end


#  ***** Creating Users ******
# puts 'creating users'
# 5.times do
#    User.create(username: Faker::Name.first_name, password: Faker::Name.last_name, profile_img: "https://pbs.twimg.com/profile_images/1246151237889921032/i4QYCOHi.jpg")
# end




# ****** Creating Posts *****
# puts 'destroying posts'
# Post.destroy_all
# puts 'writing posts'
# 5.times do
#    Post.create(content: "That's all I have to say about that!", likes: rand(1..100), user_id: rand(1..5), game_id: rand(11..19))
# end
puts 'creating user'
# User.create(username: "jakeyP", password: "ilovebrynn", profile_img: "https://miro.medium.com/max/3150/1*iEE58NvgyvwSxwk5R9j3IQ.png")

4.times do
   User.create(username: Faker::FunnyName.two_word_name, password: "123")
end



puts 'finished seeding'