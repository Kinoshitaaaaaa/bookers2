class UsersController < ApplicationController

  def new
  end

  def show
    @user = User.find(params[:id])
    @books = @user.books
  end

  def update
    @user = Book.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end

  def edit
     @user=User.find(params[:id])
  end

  def index
  end
end
