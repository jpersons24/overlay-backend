class StorySerializer < ActiveModel::Serializer
  attributes :id, :source, :author, :title, :description, :url, :urlToImage, :published_at, :content

  has_many :users
end
