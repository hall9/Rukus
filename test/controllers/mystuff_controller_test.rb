require 'test_helper'

class MystuffControllerTest < ActionController::TestCase
  test "should get myrukus" do
    get :myrukus
    assert_response :success
  end

  test "should get mycomments" do
    get :mycomments
    assert_response :success
  end

  test "should get myfavorites" do
    get :myfavorites
    assert_response :success
  end

end
