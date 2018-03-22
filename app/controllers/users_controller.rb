class UsersController < ApplicationController
  def index
    @users=User.all
  end

  def new
    @user=User.new
  end

  def create
    @user=User.create(user_params)
  end

  def show
    @user=User.find(params[:id])
    @klasses=Klass.all
  end

  def edit
    @user=User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update!(user_params)
    redirect_to user
  end

  private 
  def user_params
    params.require(:user).permit(:name)
  end

end
