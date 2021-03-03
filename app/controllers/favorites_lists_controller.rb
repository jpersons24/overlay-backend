class FavoritesListsController < ApplicationController

   def index
      favorites_lists = FavoritesList.all
      render json: favorites_lists
   end

   def show
      fl = FavoritesList.find(params[:id])
      render json: fl
   end

   def create
      fl_item = FavoritesList.create(user_id: params[:user_id], story_id: params[:story_id])
      render json: fl_item
   end

end
