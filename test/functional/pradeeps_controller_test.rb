require 'test_helper'

class PradeepsControllerTest < ActionController::TestCase
  setup do
    @pradeep = pradeeps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pradeeps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pradeep" do
    assert_difference('Pradeep.count') do
      post :create, pradeep: {  }
    end

    assert_redirected_to pradeep_path(assigns(:pradeep))
  end

  test "should show pradeep" do
    get :show, id: @pradeep
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pradeep
    assert_response :success
  end

  test "should update pradeep" do
    put :update, id: @pradeep, pradeep: {  }
    assert_redirected_to pradeep_path(assigns(:pradeep))
  end

  test "should destroy pradeep" do
    assert_difference('Pradeep.count', -1) do
      delete :destroy, id: @pradeep
    end

    assert_redirected_to pradeeps_path
  end
end
