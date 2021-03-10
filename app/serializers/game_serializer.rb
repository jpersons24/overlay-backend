class GameSerializer < ActiveModel::Serializer
  attributes :id, :sport_key, :sport_nice, :away_team, :home_team, :commence_time, :sites

  # has_many :sites
  has_many :teams
end
