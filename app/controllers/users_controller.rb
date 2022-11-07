class UsersController < ApplicationController
  def home
  end
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

	private
	def user_params
		params.require(:user).permit(:email,roles)
	end
	  
end
