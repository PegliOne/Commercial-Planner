class ProductsController < ApplicationController
before_action :check_for_admin, except: [:index]

  def index
    @products = Product.all
  end

  def new
  end

  def edit
  end

  def show
  end
end
