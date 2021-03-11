class DepartmentsController < ApplicationController
before_action :check_for_admin, except: [:index]

  def index
    @departments = Department.all
  end

  def edit
  end

  def show
    # Determine hours assigned to produce products
    @department = Department.find params[:id]
    @total_hours = 0
    @department.products.map do |product|
      hours_per_product = product.labour_hours
      product.product_orders.map do |product_order|
        @total_hours += product_order.quantity * hours_per_product if product_order.quantity.present?
      end
    end
    @total_hours += 10 # The app will recommend assigning 10 hours than is strictly required, to ensure enough hours are assigned to produce the products
    # Determine hours currently assigned
    @assigned_hours = 0
    @department.shifts.map do |shift|
      hours_per_shift = shift.hours
      numWorkers = shift.users.count
      @assigned_hours += numWorkers * hours_per_shift
    end
    # Determine whether enough hours have been assigned
    case
    when @assigned_hours > @total_hours + 10 # Being 5 hours over the recommend hours will be considered acceptable
      @status = "more shifts than recommended"
      @message = "Please check if other departments require workers."
    when @assigned_hours < @total_hours
      @status = "less shifts than recommended"
      @message = "Please create more shifts or find workers to fill current shifts."
    else
      @status = "enough shifts"
      @message = "Congratulations! The department is on track."
    end
  end
end
