class GameSerializer < ActiveModel::Serializer
  attributes :id, :sport_key, :sport_nice, :team, :home_team, :commence_time, :odds, :sites_count
end
