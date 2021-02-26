class Team < ApplicationRecord
  belongs_to :league
  has_many :team_games
  has_many :games, through: :team_games
end
