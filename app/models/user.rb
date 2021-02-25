class User < ApplicationRecord
   has_many :favorites_lists
   has_many :stories, through: :favorites_lists
   has_many :blogs
   has_many :posts
   has_many :games, through: :posts
end
