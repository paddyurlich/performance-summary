require 'test_helper'

class StatistcsControllerTest < ActionController::TestCase
  setup do
    @statistc = statistcs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:statistcs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create statistc" do
    assert_difference('Statistc.count') do
      post :create, statistc: { accessability: @statistc.accessability, callname: @statistc.callname, date: @statistc.date, retainability: @statistc.retainability }
    end

    assert_redirected_to statistc_path(assigns(:statistc))
  end

  test "should show statistc" do
    get :show, id: @statistc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @statistc
    assert_response :success
  end

  test "should update statistc" do
    patch :update, id: @statistc, statistc: { accessability: @statistc.accessability, callname: @statistc.callname, date: @statistc.date, retainability: @statistc.retainability }
    assert_redirected_to statistc_path(assigns(:statistc))
  end

  test "should destroy statistc" do
    assert_difference('Statistc.count', -1) do
      delete :destroy, id: @statistc
    end

    assert_redirected_to statistcs_path
  end
end
