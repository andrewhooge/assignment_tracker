require 'test_helper'

class TurnInsControllerTest < ActionController::TestCase
  setup do
    @turn_in = turn_ins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:turn_ins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create turn_in" do
    assert_difference('TurnIn.count') do
      post :create, turn_in: { assignment_id: @turn_in.assignment_id, completed: @turn_in.completed, url: @turn_in.url, user_id: @turn_in.user_id }
    end

    assert_redirected_to turn_in_path(assigns(:turn_in))
  end

  test "should show turn_in" do
    get :show, id: @turn_in
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @turn_in
    assert_response :success
  end

  test "should update turn_in" do
    patch :update, id: @turn_in, turn_in: { assignment_id: @turn_in.assignment_id, completed: @turn_in.completed, url: @turn_in.url, user_id: @turn_in.user_id }
    assert_redirected_to turn_in_path(assigns(:turn_in))
  end

  test "should destroy turn_in" do
    assert_difference('TurnIn.count', -1) do
      delete :destroy, id: @turn_in
    end

    assert_redirected_to turn_ins_path
  end
end
