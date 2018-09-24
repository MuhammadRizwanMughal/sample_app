class UsersController < ApplicationController
  def show
  @user = User.find(params[:id])
  end
  def new
    @user = User.new
  end
  def create
    @user=User.new(user_params)
    if @user.save
      log_in(@user)
      redirect_to @user
      flash[:success] = "Welcome to the sample Application"
      #here will b code

    else
      render 'new'
    end
  end
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmations)
  end
  def index

  end
end
