class HomesController < ApplicationController
  def index
    @books = Book.all
    @book = Book.new(book_params)
  end
  
  def create
    @book = Book.new(book_params)
    book.save
    redirect_to book_path
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
