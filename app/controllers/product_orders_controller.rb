class ProductOrdersController < ApplicationController
before_action :check_for_login

  def new
    @product_order = ProductOrder.new
    product_categories
    @order = Order.find params[:order_id]
  end

  def create
    product_order = ProductOrder.new
    product_order.quantity = params[:quantity]
    product_order.order_id = params[:order_id]
    product_order.product_id = params[:product_id]
    order = Order.find params[:order_id]
    order.product_orders.push(product_order)
  end

  def edit
    product_categories
    @order = Order.find params[:order_id]
    @product_orders = ProductOrder.where(:order_id => @order.id)
  end

  def update
    order = Order.find params[:order_id]
    product_order = ProductOrder.where(:order_id => order.id, :product_id => params[:product_id]).first
    if product_order.nil?
      product_order = ProductOrder.new
      product_order.order_id = params[:order_id]
      product_order.product_id = params[:product_id]
      order.product_orders.push(product_order)
    end
    product_order.quantity = params[:quantity]
    product_order.destroy if product_order.quantity == 0
    product_order.save
  end

  private
  def product_categories
    @dining = Product.where(category: "Dining").sort
    @bath = Product.where(category: "Bath").sort
    @electrical = Product.where(category: "Electrical").sort
    @clothing = Product.where(category: "Clothing").sort
    @health = Product.where(category: "Health/Hygiene").sort
    @kids = Product.where(category: "Kids").sort
  end
end
