class UsersController < ApplicationController

   before_action :authenticate, only: [:show]

   def index
      users = User.all
      render json: users
   end

   def show
      render json: @current_user
   end

   # POST /login
   def login
      user = User.find_by(username: params[:username])
      if user && user.authenticate(params[:password])
         render json: user
      else
         render json: { errors: ["Invalid username or password"] }, status: :unauthorized
      end
   end

end
