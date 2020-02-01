class ProductsController < ApplicationController
  before_action :find_product, :only => [:edit, :update, :delete]

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:success] = "Product created successfully"
      redirect_to products_path
    else
      flash[:danger] = "Failed to create product"
      render :new
    end
  end

  def edit
  end

  def update
   if  @product.update(product_params)
    flash[:success] = "Product updated"
    redirect_to products_path
   else
    flash[:danger] = "Failed to update retailer details"
    render :edit
   end
  end

  def delete
    if @product.delete
      flash[:success] = "Product deleted successfully"
      redirect_to products_path
    else
      flash[:danger] = "Failed to delete product"
      redirect_to products_path
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :image)
  end

  def find_product
    @product = Product.find_by_id(params[:id])
  end

end
