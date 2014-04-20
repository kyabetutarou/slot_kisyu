require 'test_helper'

class KijisControllerTest < ActionController::TestCase
  setup do
    @kiji = kijis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kijis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kiji" do
    assert_difference('Kiji.count') do
      post :create, kiji: { body: @kiji.body, slot_name_id: @kiji.slot_name_id, title: @kiji.title }
    end

    assert_redirected_to kiji_path(assigns(:kiji))
  end

  test "should show kiji" do
    get :show, id: @kiji
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kiji
    assert_response :success
  end

  test "should update kiji" do
    patch :update, id: @kiji, kiji: { body: @kiji.body, slot_name_id: @kiji.slot_name_id, title: @kiji.title }
    assert_redirected_to kiji_path(assigns(:kiji))
  end

  test "should destroy kiji" do
    assert_difference('Kiji.count', -1) do
      delete :destroy, id: @kiji
    end

    assert_redirected_to kijis_path
  end
end
