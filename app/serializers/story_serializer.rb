class StorySerializer < ActiveModel::Serializer
  attributes :id, :source, :author, :title, :description, :url, :url_to_image, :published_at, :content

  has_many :users
end
