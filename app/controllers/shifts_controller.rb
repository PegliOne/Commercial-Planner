class ShiftsController < ApplicationController
before_action :check_for_login, only: [:index]
before_action :check_for_admin, except: [:index]

  def index
    @shifts = Shift.all.sort_by { |shift| shift.start_time }
  end

  def new
    @shift = Shift.new
  end

  def create
    @shift = Shift.create shift_params
    redirect_to shift_path(@shift.id)
  end

  def show
    @shift = Shift.find params[:id]
  end

  def update
    shift = Shift.find params[:id]
    shift.update shift_params
    redirect_to shifts_path
  end

  def add_user
    shift = Shift.find params[:shift_id]
    user = User.find params[:worker_id]
    shift.users.push(user) unless shift.users.include?(user)
    redirect_to shift_path(shift.id)
  end

  def remove_user
    shift = Shift.find params[:shift_id]
    user = User.find params[:user_id]
    shift.users.delete(user) if shift.users.include?(user) # TODO: Add a warning to alert users
    redirect_to shift_path(shift.id)
  end

  private
  def shift_params
    params.require(:shift).permit(:location, :role, :hours, :start_time)
  end
end
