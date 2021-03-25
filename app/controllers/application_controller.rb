class ApplicationController < ActionController::API

   def authenticate
      @current_user = User.first
   end

end
