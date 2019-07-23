class BooksController < ApplicationController

  def index
    @book = Book
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.create(book_params)
    if @book.invalid?
      flash[:error] = '<strong>Could not save</strong> the data you entered is invalid.'
    end
    redirect_to root_path
  end

  private

  def book_params
    params.require(:book).permit(:title, :author)
  end

end
