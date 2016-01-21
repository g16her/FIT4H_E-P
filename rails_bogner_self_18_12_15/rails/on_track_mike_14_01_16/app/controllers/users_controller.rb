class UsersController < ApplicationController


	def index
		@user = User.all
	end
	def new
		@user = User.new #  macht etwas neu (User)
		
	end

 	def create

		@user = User.new(user_params)
		if @user.save
		redirect_to projects_url
		end

 	end

 	def user_params
		params.require(:user).permit( :email, :password, :password_confirmation)
	end

end
