class Game < ApplicationRecord
   has_many :sites
   has_many :posts
   has_many :users, through: :posts
   has_many :team_games
   has_many :teams, through: :team_games
end
