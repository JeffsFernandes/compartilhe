class UsersController < ApplicationController
  def update
    @user = User.find params['id']
    @user.update_attributes user_params
    redirect_to skills_path
  end

  private
  def user_params
    params.require(:user).permit(:learn, :teach)
  end
end
