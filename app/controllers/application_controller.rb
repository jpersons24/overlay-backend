class ApplicationController < ActionController::API

   def authenticate
      @current_user = User.find(7)
   end

end
