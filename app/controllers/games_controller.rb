class GamesController < ApplicationController

   def index
      games = Game.all
      render json: games
   end

   def show
      g = Game.find(params[:id])
      render json: g
   end
   
end
