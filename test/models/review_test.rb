require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
 def setup
  @review = Review.new(content: "This is a test review",
                       rating: 5,
                       food_id: 1)
  end

  test "should be valid" do
    assert @review.valid?
  end

  test "content should be present" do
    @review.content = " "
    assert_not @review.valid?
  end

  test "content must not be longer then 500 characters" do
    @review.content = "a" * 501
    assert_not @review.valid?
  end

  test "rating should be present" do
    @review.rating = " "
    assert_not @review.valid?
  end

  test "rating should not be less than 1" do
    @review.rating = 0
    assert_not @review.valid?
  end

  test "rating should not be more than 5" do
    @review.rating = 6
    assert_not @review.valid?
  end
end
