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

# # response is equal to response of API request
# response = RestClient.get 'https://newsapi.org/v2/top-headlines?country=us&category=sports&apiKey=c57acc4703364867840f0f90de339cf3'
# # response_body set equal to the body of API's response
# response_body = response.body
# # stories is the parsed JSON object
# stories = JSON.parse(response_body)

# puts = 'creating story from new API'

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

puts 'calling to API'

puts 'destroying games'
Game.destroy_all

response = RestClient.get 'https://api.the-odds-api.com/v3/odds/?apiKey=e9f576a0a8b58da82e7708ac0b19346e&sport=basketball_nba&region=us&mkt=spreads&dateFormat=iso'
response_body = response.body
games = JSON.parse(response_body)

puts 'creating games'

games["data"].each do |game|
   game["teams"].each

   Game.create(
      sport_key: game["sport_key"],
      sport_nice: game["sport_nice"],
      home_team: game["home_team"],
      commence_time: game["commence_time"],
      sites: game["sites"],
      sites_count: game["sites_count"]
   )

end




# puts 'creating users'

# 5.times do
#    User.create(username: Faker::Name.first_name, password: Faker::Name.last_name, profile_img: "data:image/png;base64,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"
#    )
# end




puts 'finished seeding'