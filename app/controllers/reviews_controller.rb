class ReviewsController < ApplicationController
  def new
    @food = Food.find(params[:food_id])
    @review = Review.new
  end
end
