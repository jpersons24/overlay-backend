class PostSerializer < ActiveModel::Serializer
  attributes :id, :content, :likes
  has_one :user
  has_one :game
end
