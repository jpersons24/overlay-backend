class FavoritesListsController < ApplicationController

   def index
      favorites_lists = FavoritesList.all
      render json: favorites_lists
   end

   def show
      favorites_list = FavoritesList.find(params[:id])
      render json: favorites_list
   end

end
