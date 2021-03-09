class UsersController < ApplicationController
  def new
  end

  def edit
  end

  def show
    @user = User.find params[:id]
    @orders = Order.where(user_id: params[:id])
  end
end
