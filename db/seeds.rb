# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require 'rest-client'

# puts 'Destroying all posts'
# Post.destroy_all
# puts 'Destroying all games'
# Game.destroy_all

# ****** CALL TO ODDS API *******
# response = RestClient.get 'https://api.the-odds-api.com/v3/odds/?apiKey=e9f576a0a8b58da82e7708ac0b19346e&sport=icehockey_nhl&region=us&mkt=h2h&dateFormat=iso'
# response_body = response.body
# games = JSON.parse(response_body)
# # byebug


# ******** CREATE GAMES ********
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



# ******* Create Sites *********
# puts 'destroying current Sites'
# Site.destroy_all

# create while loop to access each games site array
      # ***** while loop body will need to change based on what odds are coming back from API --> other types of odds are nested hashes *****
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


# ******** DO NOT USE *********
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





# ****** Creating Posts *****




puts 'finished seeding'