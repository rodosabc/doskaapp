require 'test_helper'

class FuckYousControllerTest < ActionController::TestCase
  setup do
    @fuck_you = fuck_yous(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fuck_yous)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fuck_you" do
    assert_difference('FuckYou.count') do
      post :create, fuck_you: { fuck_yourself_counter: @fuck_you.fuck_yourself_counter }
    end

    assert_redirected_to fuck_you_path(assigns(:fuck_you))
  end

  test "should show fuck_you" do
    get :show, id: @fuck_you
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fuck_you
    assert_response :success
  end

  test "should update fuck_you" do
    patch :update, id: @fuck_you, fuck_you: { fuck_yourself_counter: @fuck_you.fuck_yourself_counter }
    assert_redirected_to fuck_you_path(assigns(:fuck_you))
  end

  test "should destroy fuck_you" do
    assert_difference('FuckYou.count', -1) do
      delete :destroy, id: @fuck_you
    end

    assert_redirected_to fuck_yous_path
  end
end
