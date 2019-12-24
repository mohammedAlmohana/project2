class FarmsController < ApplicationController
  before_action :authenticate_user!
  def index
    @user = current_user
    @farms = Farm.all 
  end

  def new
    @farm = Farm.new
  end

  def show
    @farm = Farm.find(params[:id]) 
   end

  def edit
    @farm = Farm.find(params[:id])
  end

  def create
    @user = current_user
    @farm = @user.farms.create(farm_params)  
    redirect_to farms_path
  end
  def destroy
    
    @farm = Farm.find(params[:id])
    @farm.destroy
    redirect_to farms_path
  end
  def update
    @user = current_user
    @farm = @user.farms.find(params[:id])
    @farm.update(farm_params)
    redirect_to farms_path
  end
  private
  def farm_params
      params.require(:farm).permit(:name, :price, :location, :image)
  end
end
