class ApplicationController < ActionController::API

   def authenticate
      @current_user = User.second
   end

end
