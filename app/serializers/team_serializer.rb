class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :league
  has_many :games
end
