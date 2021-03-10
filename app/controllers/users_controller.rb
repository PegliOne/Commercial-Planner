class UsersController < ApplicationController
before_action :check_for_login, except: [:new]
before_action :check_for_no_login, only: [:new]
before_action :check_for_specific_user, except: [:new]

  def new
  end

  def update
    @user = User.find params[:id]
    @user.update user_params
    @user.save
    redirect_to user_path(@user.id)
  end

  def show
    @user = User.find params[:id]
  end

  def orders
    @user = User.find params[:id]
    @orders = Order.where(user_id: params[:id])
  end

  def shifts
    @user = User.find params[:id]
  end

  def select_shift
    user = User.find params[:id]
    shift = Shift.find params[:id]
    user.shifts.push(shift) unless user.shifts.include?(shift) #TODO: Show when a shift has already been booked
    redirect_to user_shifts_path(user.id)
  end

  def remove_shift
    user = User.find params[:id]
    shift = Shift.find params[:id]
    user.shifts.delete(shift) if user.shifts.include?(shift) #TODO: Show a warning when a shift
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :mobile, :available_hours)
  end
end
