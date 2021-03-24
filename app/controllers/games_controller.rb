class GamesController < ApplicationController

   def index
      games = Game.all
      render json: games
   end

   def show
      g = Game.find(params[:id])
      render json: g
   end

   def create
      newGame = Game.create(id: params[:id], sport_key: params[:sport_key], sport_nice: params[:sport_nice], away_team: params[:away_team], home_team: params[:home_team], commence_time: params[:commence_time])

      render json: newGame
   end
   
end
