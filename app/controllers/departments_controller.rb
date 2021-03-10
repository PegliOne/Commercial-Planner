class DepartmentsController < ApplicationController
before_action :check_for_admin, except: [:index]

  def index
    @departments = Department.all
  end

  def edit
  end

  def show
  end
end
