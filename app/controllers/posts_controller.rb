class PostsController < ApplicationController

   def index
      posts = Post.all
      render json: posts
   end

   def show
      p = Post.find(params[:id])
      render json: p
   end

   def create
      newPost = Post.create(user_id: params[:user_id], game_id: params[:game_id], content: params[:content], likes: params[:likes])
      
      render json: newPost
   end

end
