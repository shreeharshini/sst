class UserController < ApplicationController


 def index
    @users = User.all
  end

  def new
    byebug
    @user = User.new
  end

  def create
    byebug
    @user = User.new(user_params)
    byebug
    if @users.save
      redirect_to users_path
    else
      render 'new'
    end
  end

  def destroy
	 @user.destroy
	 redirect_to root
  end

  private
    def user_params
      params.require(:users).permit(:first_name, :last_name, :email, :password, :password_confirmation, :role)
    end
end