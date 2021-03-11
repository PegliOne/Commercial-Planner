class OrdersController < ApplicationController
  before_action :check_for_login

  def index
    @orders = Order.all.sort_by { |order| order.date }
  end

  def new
    @order = Order.new
  end

  def create
    order = Order.create order_params
    order.date = Date.today
    @current_user.orders.push(order)
    redirect_to edit_product_order_path(order.id)
  end

  def edit
    @order = Order.find params[:id]
    @confirmation_date = @order.date + 48 * 3600 # Defines the date after which the order can be modified, 2 days after the date the order is placed
  end

  def update
    order = Order.find params[:id]
    order.update order_params
    @product_orders = ProductOrder.where(order_id: params[:id])
    redirect_to edit_product_order_path(order.id)
  end

  def show
    @order = Order.find params[:id]
    @product_orders = ProductOrder.where(order_id: params[:id]).sort
    @confirmation_date = @order.date + 48 * 3600
    plane_ticket_id = Product.find_by(:name => "Plane Tickets (by unit)").id
    @plane_ticket = ProductOrder.find_by(product_id: plane_ticket_id)
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

end
