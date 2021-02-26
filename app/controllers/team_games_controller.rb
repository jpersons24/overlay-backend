class TeamGamesController < ApplicationController
   
   def index
      t = TeamGame.all
      render json: t
   end

   def show
      tg = TeamGame.find(params[:id])
      render json: tg
   end
end
