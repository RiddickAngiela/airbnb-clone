class SessionsController < ApplicationController


     def destroy
    session.delete(:user_id) # Clear the user's session
    redirect_to root_path, notice: 'You have been signed out.'
  end
end
