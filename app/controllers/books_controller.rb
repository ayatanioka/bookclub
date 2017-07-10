class BooksController < ApplicationController

  def index
    @books = Book.includes(:reviews).order('id DESC')
  end

  def show
    @book = Book.includes(:reviews).find(params[:id])
    # @review = Review.find(params[:id])

  end


end
