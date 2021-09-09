require 'test_helper'

class FoodsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    get '/users/sign_in'
    sign_in users(:user_001)
    post user_session_url
  end

  test "should get index" do
    assert_routing '/foods', controller: "foods", action: "index"
  end

  test "should get show" do
    assert_routing '/foods/1', controller: "foods", action: "show", id: "1"
  end

  test "should get new" do
    get "/foods/new"
    assert_response :success
    assert_select "h1", "Add your Fav Food"
  end

  test "should create and update fav food" do
    assert_difference("Food.count") do
      post foods_url, params: { food: { name: "Pommes",
                                        cuisine: "International",
                                        description: "Potatoes at it's best"} }
    end
    assert_redirected_to food_path(Food.last)
    patch food_url(Food.last), params: { food: { description: "Updated"} }
    assert_equal Food.last.description, "Updated"
    assert_redirected_to food_path(Food.last)
  end
end
