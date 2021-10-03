class ReviewsController < ApplicationController
  before_action :set_food, only: [:new, :create]

  def new
    @review = Review.new
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    authorize @review
    @review.user = current_user
    @review.food = @food
    if @review.save
      redirect_to food_path(@food)
    else
      render :new
    end
  end

  def my_reviews
    @reviews = Review.where(user_id: current_user)
    authorize @reviews
  end

  private

  def set_food
    @food = Food.find(params[:food_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
