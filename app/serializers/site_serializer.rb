class SiteSerializer < ActiveModel::Serializer
  attributes :id, :site_key, :site_nice, :last_update, :odds
  has_one :game
end
