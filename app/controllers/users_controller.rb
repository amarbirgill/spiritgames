class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path, notice: "Thanks for Signing Up!"
    else 
      flash.now[:alert] = "Please enter a valid email address "
      render :new 
    end
  end

  protected

  def user_params
    params.require(:user).permit(:name, :email)
  end

end
