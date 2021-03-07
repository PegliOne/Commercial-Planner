class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def new
  end

  def edit
  end

  def show
    @order = Order.find params[:id]
    @product_orders = ProductOrder.where(order_id: params[:id])
    @products = []
    @product_orders.map do |product_order|
      product_id = product_order.product_id
      product = Product.find product_id
      @products.push(product)
    end
  end
end
