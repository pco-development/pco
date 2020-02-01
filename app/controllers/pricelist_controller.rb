class PricelistController < ApplicationController
  def index
  	@price_list = Pricelist.all
  end

  def new
  	@price_list = Pricelist.new
  end

  def create
  	debugger
  	price_params[:product_id]
  end

  private

  def price_params
  	params.required(:pricelist).permit(:date, product_id: [], available_quantity: [], sale_price: [])
  end
end
