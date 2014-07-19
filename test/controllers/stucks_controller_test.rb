require 'test_helper'

class StucksControllerTest < ActionController::TestCase
  setup do
    @stuck = stucks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stucks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stuck" do
    assert_difference('Stuck.count') do
      post :create, stuck: { description: @stuck.description }
    end

    assert_redirected_to stuck_path(assigns(:stuck))
  end

  test "should show stuck" do
    get :show, id: @stuck
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stuck
    assert_response :success
  end

  test "should update stuck" do
    patch :update, id: @stuck, stuck: { description: @stuck.description }
    assert_redirected_to stuck_path(assigns(:stuck))
  end

  test "should destroy stuck" do
    assert_difference('Stuck.count', -1) do
      delete :destroy, id: @stuck
    end

    assert_redirected_to stucks_path
  end
end
