class User < ApplicationRecord
   has_secure_password

   validates :username, uniqueness: { case_sensitive: false }

   has_many :favorites_lists
   has_many :stories, through: :favorites_lists
   has_many :blogs
   has_many :posts
   has_many :games, through: :posts
end
