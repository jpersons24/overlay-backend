class SitesController < ApplicationController

   def index
      sites = Site.all
      render json: sites
   end

   def show
      s = Site.find(params[:id])
      render json: s
   end

end
