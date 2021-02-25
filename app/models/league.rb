class League < ApplicationRecord
   has_many :teams
   has_many :games, through: :leagues
end
