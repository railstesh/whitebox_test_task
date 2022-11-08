class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def index 
    @users = User.all
  end

  def create 
    @user = User.new(user_params)
    if @user.save
      redirect_to new_user_registration_pah(@user)
    else
      render 'new'
    end
  end

  def update 
    @user = User.update(user_params)
    if @user.save
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id])
    user.destroy
    redirect_to @user
  end

  private
  
  def user_params
    params.require(:user).permit(:email,roles)
  end  
end
