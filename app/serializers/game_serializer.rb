class GameSerializer < ActiveModel::Serializer
  attributes :id, :sport_key, :sport_nice, :away_team, :home_team, :commence_time
end
