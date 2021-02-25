class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :game
  has_one :league
end
