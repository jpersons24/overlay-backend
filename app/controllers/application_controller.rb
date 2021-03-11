class ApplicationController < ActionController::API

   def authenticate
      @current_user = User.find(6)
   end

end
