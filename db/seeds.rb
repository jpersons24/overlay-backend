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
# puts 'destroying previous games'
# Game.destroy_all
# Game, team, leagues and odds data retreived
# response = RestClient.get 'https://api.the-odds-api.com/v3/odds/?apiKey=e9f576a0a8b58da82e7708ac0b19346e&sport=basketball_nba&region=us&mkt=h2h&dateFormat=iso'
# response_body = response.body
# games = JSON.parse(response_body)
# byebug
# puts 'getting game info from odds API'
# puts 'creating new games'
# games["data"].each do |single_game|
#    # create game details with home and away teams
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
# i = 0
# while (i < games["data"].length)
#    games["data"][i]["sites"].each do |s|
#       Site.create(
#          site_key: s["site_key"],
#          site_nice: s["site_nice"],
#          last_update: s["last_update"],
#          odds: s["odds"]["h2h"].join(", "),
#          game_id: (i + 11)
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



# ****** CREATE LEAGUE ******
# League.create(name: "NBA")



# ****** CREATING TEAMS ******
# Team.create(name: "Atlanta Hawks", league_id: 1)
# Team.create(name: "Boston Celtics", league_id: 1)
# Team.create(name: "Brooklyn Nets", league_id: 1)
# Team.create(name: "Charlotte Hornets", league_id: 1)
# Team.create(name: "Chicago Bulls", league_id: 1)
# Team.create(name: "Cleveland Cavaliers", league_id: 1)
# Team.create(name: "Dallas Mavericks", league_id: 1)
# Team.create(name: "Denver Nuggets", league_id: 1)
# Team.create(name: "Detroit Pistons", league_id: 1)
# Team.create(name: "Golden State Warriors", league_id: 1)
# Team.create(name: "Houston Rockets", league_id: 1)
# Team.create(name: "Indiana Pacers", league_id: 1)
# Team.create(name: "LA Clippers", league_id: 1)
# Team.create(name: "LA Lakers", league_id: 1)
# Team.create(name: "Memphis Grizzlies", league_id: 1)
# Team.create(name: "Miami Heat", league_id: 1)
# Team.create(name: "Milwaukee Bucks", league_id: 1)
# Team.create(name: "Minnesota Timberwolves", league_id: 1)
# Team.create(name: "New Orleans Pelicans", league_id: 1)
# Team.create(name: "New York Knicks", league_id: 1)
# Team.create(name: "Oklahoma City Thunder", league_id: 1)
# Team.create(name: "Orlando Magic", league_id: 1)
# Team.create(name: "Philadelphia Sixers", league_id: 1)
# Team.create(name: "Phoenix Suns", league_id: 1)
# Team.create(name: "Portland Trail Blazers", league_id: 1)
# Team.create(name: "Sacramento Kings", league_id: 1)
# Team.create(name: "San Antonio Spurs", league_id: 1)
# Team.create(name: "Toronto Raptors", league_id: 1)
# Team.create(name: "Utah Jazz", league_id: 1)
# Team.create(name: "Washington Wizards", league_id: 1)


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


# ******* CREATE TEAMGAMES *******
# puts 'destroying all TeamGames'
# TeamGame.destroy_all
# puts 'creating TeamGames with home teams only'

# def home_teams
#    games = Game.all
#    games.each do |game|
#       ht = Team.find_by(name: game.home_team)
#       TeamGame.create(game_id: game.id, team_id: ht.id)
#       # byebug
#    end
# end

# puts 'home team TeamGames'
# home_teams

# def away_teams
#    games = Game.all
#    games.each do |game|
#       at = Team.find_by(name: game.away_team)
#       TeamGame.create(game_id: game.id, team_id: at.id)
#    end
# end

# puts 'away team TeamGames'
# away_teams

# Game.destroy_all

puts 'finished seeding'