class ApplicationController < ActionController::API

   def authenticate
      @current_user = User.third
   end

end
