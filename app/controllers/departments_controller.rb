class DepartmentsController < ApplicationController
before_action :check_for_admin, except: [:index]

  def index
    @departments = Department.all
    @departments[1].products.map do |product|
      total_hours = 0
      hours_per_product = product.labour_hours
      product.product_orders.map do |product_order|
        total_hours += product_order.quantity * hours_per_product if product_order.quantity.present?
      end
      # raise "hell"
    end
  end

  def edit
  end

  def show
  end
end
