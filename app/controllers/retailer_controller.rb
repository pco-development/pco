class RetailerController < ApplicationController
	before_action :find_retailer, :only => [:show, :edit, :update, :delete]
  
  def index
  	@retailers = Retailer.all
  end

  def new
  	@retailer = Retailer.new
  end

  def create
  	@retailer = Retailer.new(retailer_params)
  	puts retailer_params
  	if @retailer.save
  		flash[:success] = "Retailer created successfully"
  		redirect_to retailers_path
  	else
  		flash[:danger] = "Failed to create retailer"
  		render :new
  	end
  end

  def edit
  end

  def show
  end

  def update
  	if @retailer.update(retailer_params)
  		flash[:success] = "Retails details updated successfully"
  		redirect_to retailers_path
  	else
  		flash[:danger] = "Failed to updated retails details"
  		render :edit
  	end
  end

  def delete
  	if @retailer.update_attribute(:status, 1)
  		flash[:success] = "Retails deleted successfully"
  		redirect_to retailers_path
  	else
  		flash[:danger] = "Failed to delete retails"
  		redirect_to retailers_path
  	end
  end

  private

  def retailer_params
  	params.require(:retailer).permit(:name, :shop_name, :mobile, :alternate_mobile, 
  		:email, :address, :landmark, :city, :state, :pincode, :latitude, :longitude, :image)
  end

  def find_retailer
  	@retailer = Retailer.find_by_id(params[:id])
  end

  def code
  	'PCR' + "%06d" % ((Retailer.maximun(:id) || 0)+1)
  end

end