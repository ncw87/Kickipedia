class CollectionsController < ApplicationController
  
  def create
    @collection = Collection.new(shoe_id: params[:shoe_id], user_id: current_user.id)
    if @collection.save
      flash[:notice] = "Added Shoe."
      redirect_to shoe_path(params[:shoe_id])
    else
      flash[:error] = "Unable to add shoe."
      redirect_to shoe_path(params[:shoe_id])
    end
  end

  def destroy
    @collection = Collection.find_by(shoe_id: params[:shoe_id], user_id: current_user.id)
    @collection.destroy
    flash[:notice] = "Shoe has been removed from your collection."
    redirect_to shoe_path
  end

end
