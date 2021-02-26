class PostsController < ApplicationController

   def index
      posts = Post.all
      render json: posts
   end

   def show
      p = Post.find(params[:id])
      render json: p
   end

end
