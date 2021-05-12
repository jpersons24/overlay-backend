class UsersController < ApplicationController

   before_action :authenticate, only: [:show]

   def index
      users = User.all
      render json: users
   end

   def show
      render json: @current_user
   end

   def create
      user = User.create(user_params)

      if user.valid?
         render json: user, status: :created
      else
         render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
      end
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


   private

   def user_params
      params.permit(:username, :password, :profile_img)
   end

end
