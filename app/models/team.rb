class Team < ApplicationRecord
  belongs_to :game
  belongs_to :league
end
