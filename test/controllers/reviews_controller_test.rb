require 'test_helper'

class ReviewsControllerTest < ActionDispatch::IntegrationTest

  setup do
    get '/users/sign_in'
    sign_in users(:user_001)
    post user_session_url
    @food = foods(:food_001)
  end

  test "should get new" do
    get "/foods/1/reviews/new"
    assert_response :success
    assert_select "h1", "Add your Review"
  end

  test "should create a new review" do
    assert_difference("Review.count") do
      post food_reviews_url(@food), params: { review: { content: "A new test review",
                                                        rating: 4,
                                                        user_id: "1"} }
    end
    assert_equal Review.last.rating, 4
    assert_redirected_to food_path(@food)
  end
end

