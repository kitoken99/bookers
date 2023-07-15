class BooksController < ApplicationController
  def index
    @Book = Book.new
    @Books = Book.all
  end
  def create
    book = Book.new(book_params)
    book.save
    flash[:notice] = "Book was successfully created."
    redirect_to book_path(book.id)
    
  end
  def show
    @book = Book.find(params[:id])
  end
  
  
  
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
