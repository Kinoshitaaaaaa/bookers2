class BooksController < ApplicationController
  def new
    @book=Book.new
  end

  def create
    @book = Book.new(post_image_params)
    @book.user_id = current_user.id

    if @book.save
      redirect_to books_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def index
  end
end
