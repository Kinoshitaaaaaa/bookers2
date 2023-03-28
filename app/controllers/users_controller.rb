class UsersController < ApplicationController

  def new
  end

  def show
    @user = User.find(params[:id])
    @books = @user.books
    @user=current_user
    @book=Book.new
    
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end

  def edit
     @user=User.find(params[:id])
  end

  def index
    @user=current_user
    @book=Book.new
    @users=User.all
  end
  
  
  
  private

  def user_params
    params.require(:user).permit(:name,:introduction,:profile_image)
  end

end
