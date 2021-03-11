class OrdersController < ApplicationController
  before_action :check_for_login

  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
    product_categories
  end

  def create
    order = Order.create order_params
    order.date = Date.today
    @current_user = User.find_by(id: 81)
    @current_user.orders.push(order)
    redirect_to edit_product_order_path(order.id)
  end

  def edit
    @order = Order.find params[:id]
    product_categories
  end

  def update
    order = Order.find params[:id]
    order.update order_params
    @product_orders = ProductOrder.where(order_id: params[:id])
    redirect_to edit_product_order_path(order.id)
  end

  def show
    @order = Order.find params[:id]
    @product_orders = ProductOrder.where(order_id: params[:id])
  end

  def destroy
    order = Order.find params[:id]
    order.destroy
    redirect_to user_orders_path
  end

  private
  def order_params
    params.require(:order).permit(:address, :product_orders)
  end

  def product_categories
    @foods = Product.where(category: "Food")
    @drinks = Product.where(category: "Drink")
    @clothing = Product.where(category: "Clothing")
    @hygiene_products = Product.where(category: "Health/Hygiene")
    @tickets = Product.where(category: "Transport")
    @entertainment = Product.where(category: "Entertainment")
  end
end
