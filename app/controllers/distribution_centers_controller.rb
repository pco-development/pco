class DistributionCentersController < ApplicationController
  def index
  	@dcList = DistributionCenter.all.active
  end

  def new
    @dc = DistributionCenter.new
  end

  def create
    @dc = DistributionCenter.new(dc_params)
    @dc.save
  end

  def edit
  end

  def delete
  end

  private

  def dc_params
    params.require(:dc).permit(:name, :code, :address, :city, :state, :country, :lat, :long)
  end 
end
