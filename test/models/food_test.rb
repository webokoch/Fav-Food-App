require 'test_helper'

class FoodTest < ActiveSupport::TestCase
  def setup
    @food = Food.new( name: "Sushi",
                      cuisine: "Japanese",
                      description: "High class sushi" )
  end

  test "should be valid" do
    assert @food.valid?
  end

  test "name should be present" do
    @food.name = " "
    assert_not @food.valid?
  end

  test "name should be unique" do
    duplicate_food = @food.dup
    duplicate_food.name = @food.name.upcase
    @food.save
    assert_not duplicate_food.valid?
  end

  test "cuisine should be present" do
    @food.cuisine = " "
    assert_not @food.valid?
  end

  test "description should be present" do
    @food.description = " "
    assert_not @food.valid?
  end

  test "description must not be longer then 500 characters" do
    @food.description = "a" * 501
    assert_not @food.valid?
  end
end
