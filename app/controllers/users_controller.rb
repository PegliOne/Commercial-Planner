class UsersController < ApplicationController
before_action :check_for_login, except: [:new, :create]
before_action :check_for_admin, only: [:index]
before_action :check_for_no_login, only: [:new]
before_action :check_for_specific_user, only: [:update, :select_shift, :remove_shift]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create user_params
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render :new
    end
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
    @user = User.find @current_user.id
    @orders = Order.where(user_id: params[:id])
  end

  def shifts
    @user = User.find params[:id]
    @shifts = @user.shifts.sort_by {|shift| shift.start_time }
  end

  def select_shift
    user = User.find @current_user.id
    new_shift = Shift.find params[:shift_id]
    new_end_time = new_shift.start_time + ((new_shift.hours + 10) * 3600) # a 10 hour gap is inserted between shifts to allow time for workers to left
    # Prevents adding a shift if the shift's end time is after the start of pre-existing shifts
    same_time_shift = user.shifts.where(:start_time => new_shift.start_time..new_end_time).first
    # Prevents adding a shift if the shift's start time is before the end of a pre-existing shift
    time_conflict = false
    if same_time_shift.nil?
      user.shifts.each do |shift|
        shift_end_time = shift.start_time + ((shift.hours + 10) * 3600)
        time_conflict = true if new_shift.start_time.between?(shift.start_time, shift_end_time)
      end
    end
    # Creates error when a shift presents a time conflict
    if same_time_shift.present? || time_conflict == true
      flash[:error] = "Time Conflict"
    else
      user.shifts.push(new_shift)
    end
    redirect_to user_shifts_path(user.id)
  end

  def remove_shift
    user = User.find params[:id]
    shift = Shift.find params[:shift_id]
    user.shifts.delete(shift) if user.shifts.include?(shift)
    flash[:message] = "Shift Cancelled"
    redirect_to user_shifts_path(user.id)
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :mobile, :available_hours, :password)
  end
end
