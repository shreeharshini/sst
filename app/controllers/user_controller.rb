class UserController < ApplicationController


 def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @users.save
      redirect_to users_index_path
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