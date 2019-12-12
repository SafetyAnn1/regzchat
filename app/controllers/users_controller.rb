class UsersController < ApplicationController
  before_action :authorize_user! 

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path
  end


  private

  def user_params
    params.require(:user).permit(:fname, :lname, :email, :phone, :username, :address, :city, :state, :zip, :biography)
  end

  def authorize_user!
    if current_user.id != params[:id].to_i
      redirect_to root_path 
    end
  end
end
