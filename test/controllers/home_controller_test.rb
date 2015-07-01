require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get game" do
    get :game
    assert_response :success
  end

  test "should get tinyurl" do
    get :tinyurl
    assert_response :success
  end

  test "should get golly" do
    get :golly
    assert_response :success
  end

end
