class StoriesController < ApplicationController

   def index
      stories = Story.all
      render json: stories
   end

   def show
      story = Story.find(params[:id])
      render json: story
   end

   def create
      newStory = Story.create(source: params[:source], author: params[:author], title: params[:title], description: params[:description], url: params[:url], urlToImage: params[:urlToImage], published_at: params[:published_at], content: params[:content])

      render json: newStory
   end
   
end
