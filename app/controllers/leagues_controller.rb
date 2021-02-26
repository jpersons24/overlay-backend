class LeaguesController < ApplicationController

   def index
      leagues = League.all
      render json: leagues
   end

   def show
      l = League.find(params[:id])
      render json: l
   end

end
