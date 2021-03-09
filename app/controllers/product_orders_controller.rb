class ProductOrdersController < ApplicationController
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
    @foods = Product.where(category: "Food")
    @drinks = Product.where(category: "Drink")
    @clothing = Product.where(category: "Clothing")
    @hygiene_products = Product.where(category: "Health/Hygiene")
    @tickets = Product.where(category: "Transport")
    @entertainment = Product.where(category: "Entertainment")
  end
end

# Old Form Example
#
# <% @foods.each_with_index do |product, index| %>
#   <% if @product_orders.present? && @product_orders.any? {|po| po.product_id == product.id } %>
#     <% po = @product_orders.find_by(product_id: product.id) %>
#     <%= label_tag product.name %>
#     <%= number_field_tag "quantity#{index+1}", :value => 0, :min => 0, :max => 20 %>
#   <% else %>
#     <%= label_tag product.name %>
#     <%= number_field_tag "quantity#{index+1}", :value => 0, :min => 0, :max => 20 %>
#   <% end %>
# <% end %>
