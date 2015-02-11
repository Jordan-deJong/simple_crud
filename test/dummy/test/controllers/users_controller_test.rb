require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  # setup do
  #   @user = users(:one)
  # end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: {name: 'Joe Smith'}
    end

    assert_redirected_to users_path
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should update user" do
    user = User.new(name: "Joe Smith").save
    patch :update, id: user, user: { name: "Smith Joe" }
    assert_redirected_to users_paths
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should destroy post" do
    user = User.new(name: "Joe Smith").save

    assert_difference('User.count', -1) do
      delete :destroy, id: user
    end

    assert_redirected_to users_path
  end

end
