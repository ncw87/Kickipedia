class ShoesController < ApplicationController

	def index
		@shoes = Shoe.all
		# @shoe = Shoe.search(params[:search])
	end

	def show
		@shoe = Shoe.find(params[:id])
		# @collections = Collection.all
		@users = @shoe.users
	end

	def search
		# render text: params
		@shoes = Shoe.where("name like ?", "%#{params[:search]}%")
	end

	def new
	@shoe = Shoe.new
	end

	def create
	@shoe = Shoe.new(shoe_params)
		if @shoe.save
			redirect_to current_user, flash: { success: "User Registered!"}
		else
			redirect_to current_user, flash: { errors: "invalid registration"} 
		end
	end

	def shoe_brand
	# render json: current_user
		@shoe = Shoe.where(brand: params[:name]).order("RANDOM()").first
	end

	def brand_all
		@shoes = Shoe.where(brand: params[:name])
	end

	private
	def shoe_params
		params.require(:shoe).permit(:name, :description, :release_date, :image, :brand)
	end
end
