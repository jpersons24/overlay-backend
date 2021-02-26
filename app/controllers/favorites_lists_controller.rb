class FavoritesListsController < ApplicationController

   def index
      favorites_lists = FavoritesList.all
      render json: favorites_lists
   end

   def show
      fl = FavoritesList.find(params[:id])
      render json: fl
   end
   
end
