class BlogsController < ApplicationController

   def index
      blogs = Blog.all
      render json: blogs
   end

   def show
      b = Blog.find(params[:id])
      render json: b
   end

end
