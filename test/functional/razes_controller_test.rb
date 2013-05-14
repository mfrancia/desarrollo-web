require 'test_helper'

class RazesControllerTest < ActionController::TestCase
  setup do
    @raze = razes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:razes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create raze" do
    assert_difference('Raze.count') do
      post :create, raze: { name: @raze.name }
    end

    assert_redirected_to raze_path(assigns(:raze))
  end

  test "should show raze" do
    get :show, id: @raze
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @raze
    assert_response :success
  end

  test "should update raze" do
    put :update, id: @raze, raze: { name: @raze.name }
    assert_redirected_to raze_path(assigns(:raze))
  end

  test "should destroy raze" do
    assert_difference('Raze.count', -1) do
      delete :destroy, id: @raze
    end

    assert_redirected_to razes_path
  end
end
