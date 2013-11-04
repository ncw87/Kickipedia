class UsersController < ApplicationController

	def main

	end

	def index
		@users = User.all
		# redirect_to shoes_path
		@shoe = Shoe.order("RANDOM()").first
		# @shoe = Shoe.where(brand: params[:name]).order("RANDOM()").first
		# @shoes = Shoe.search(params[:search])
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to new_session_path flash: { success: "User Registered!"}
		else
			redirect_to login_path flash: { errors: "invalid registration"} 
		end
	end

	def show
		@user = User.find(params[:id])
		@shoe_closet = @user.shoes
	end
	
	private

	def user_params
  		params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  	end
end