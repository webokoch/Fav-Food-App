require 'test_helper'

class ReviewsControllerTest < ActionDispatch::IntegrationTest

  test "should get new" do
    assert_routing '/foods/1/reviews/new',
      controller: "reviews",
      action: "new",
      food_id: "1"
  end
end
