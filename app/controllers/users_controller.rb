class UsersController < ApplicationController


  def new
    @review = Review.new
  end

  def show
    @name = current_user.name
    @books = Book.includes(:reviews).order('id DESC')
    # @book = Book.find(params[:id])
    # @reviews = Review.where(user_id: current_user.id)
    @review = Review.new
  end

  # def create
  #   @review = Review.create(review: params[:review])
  # end

  def create
    Review.create(create_params)
    redirect_to controller: :books, action: :index
  end

  private
  def create_params
    params.require(:review).permit(:review).merge(user_id: current_user.id, book_id: params[:book_id])
  end
end
