class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password_digest, :profile_img

  has_many :posts
  has_many :stories
end
