class StoriesController < ApplicationController
   
   def index
      stories = Story.all
      render json: stories
   end

   def show
      story = Story.find(params[:id])
   end
end
