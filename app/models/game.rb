class Game < ApplicationRecord
   has_many :posts
   has_many :users, through: :games
   has_many :teams
   has_many :leagues, through: :teams
end
