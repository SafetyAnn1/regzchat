class UsersController < ApplicationController
  before_action :authorize_user! 

  def show
    @user = User.find(params[:id])
  end

  def update
    @user.update(user_params)
  end


  private

  def user_params
    params.require(:user).permit(:fname, :lname, :email)
  end

  def authorize_user!
    if current_user.id != params[:id].to_i
      redirect_to root_path 
    end
  end
end
