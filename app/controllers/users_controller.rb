# app/controllers/users_controller.rb
class UsersController < ApplicationController
  # Your other actions...

  def update_profile_image
    @user = current_user # Assuming you have authentication
    if @user.update(user_params)
      redirect_to edit_user_registration_path, notice: 'Profile image updated successfully'
    else
      render 'edit' # Handle validation errors
    end
  end

  private

  def user_params
    params.require(:user).permit(:profile_image)
  end
end
