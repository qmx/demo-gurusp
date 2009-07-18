require 'test_helper'

class MakersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:makers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create maker" do
    assert_difference('Maker.count') do
      post :create, :maker => { }
    end

    assert_redirected_to maker_path(assigns(:maker))
  end

  test "should show maker" do
    get :show, :id => makers(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => makers(:one).to_param
    assert_response :success
  end

  test "should update maker" do
    put :update, :id => makers(:one).to_param, :maker => { }
    assert_redirected_to maker_path(assigns(:maker))
  end

  test "should destroy maker" do
    assert_difference('Maker.count', -1) do
      delete :destroy, :id => makers(:one).to_param
    end

    assert_redirected_to makers_path
  end
end
