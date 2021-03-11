class ProductsController < ApplicationController
before_action :check_for_admin, except: [:index]

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def edit
    @product = Product.find params[:id]
  end

  def update
    @product = Product.find params[:id]
    @product.update product_params
    redirect_to products_path
  end

  def show
  end

  private
  def product_params
    params.require(:product).permit(:name, :category, :labour_hours)
  end
end
