class ReviewsController < ApplicationController

  def new
    @book = Book.find(params[:book_id])
    @review = Review.new
  end

  def show
  end

  def update
  end

  def edit
  end

  def create
    Review.create(create_params)
    redirect_to controller: :books, action: :index
  end

  private
  def create_params
    params.require(:review).permit(:rate, :review).merge(user_id: current_user.id, book_id: params[:book_id])
  end


end
