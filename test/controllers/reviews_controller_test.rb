require 'test_helper'

class ReviewsControllerTest < ActionDispatch::IntegrationTest

  setup do
    @food = foods(:food_001)
  end

  test "should get new" do
    assert_routing '/foods/1/reviews/new',
      controller: "reviews",
      action: "new",
      food_id: "1"
  end

  # test "should create a new review" do
  #   assert_difference("Review.count") do
  #     post food_reviews_url(@food), params: { review: { content: "A new test review",
  #                                                       rating: "4"} }
  #   end
  #   assert_equal Review.last.rating, "4"
  #   assert_redirected_to food_path(food_id: "1")
  # end
end

