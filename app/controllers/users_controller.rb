class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @users = User.new
  end

  def create
    @users = User.new(user_params)
    if @users.save!
      redirect_to users_index_path
    else
      render 'new'
    end
  end

  private
  def user_params
      params.require(:users).permit(:first_name, :last_name, :email, :password, :password_confirmation, :role, :account_id)
    end
end
