class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password, :profile_img

  has_many :posts
  has_many :stories
end
