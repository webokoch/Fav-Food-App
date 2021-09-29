class ReviewsController < ApplicationController
  before_action :set_food

  def new
    @food = Food.find(params[:food_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @food = Food.find(params[:food_id])
    @review.food = @food
    if @review.save
      redirect_to food_path(@food)
    else
      render :new
    end
  end

  private

  def set_food
    @food = Food.find(params[:food_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
