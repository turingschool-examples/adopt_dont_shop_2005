class SheltersController < ApplicationController
  def index
    @shelters = Shelter.all
  end

  def new
  end

  def show
    @shelter = Shelter.find(params[:id])
  end

  def create
    Shelter.create(shelter_params)
    redirect_to '/shelters'
  end

  def edit
    @shelter = Shelter.find(params[:id])
  end

  def update
    shelter = Shelter.find(params[:id])
    shelter.update(shelter_params)
    redirect_to "/shelters"
  end

  # def destroy
  #   Artist.destroy(params[:id])
  #   redirect_to "/artists"
  # end

  private
  def shelter_params
    params.permit(:name, :address, :city, :state, :zip)
  end
end
