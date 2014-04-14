require 'test_helper'

class SlotNamesControllerTest < ActionController::TestCase
  setup do
    @slot_name = slot_names(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:slot_names)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create slot_name" do
    assert_difference('SlotName.count') do
      post :create, slot_name: { dounyuu: @slot_name.dounyuu, img: @slot_name.img, name: @slot_name.name, setumei: @slot_name.setumei }
    end

    assert_redirected_to slot_name_path(assigns(:slot_name))
  end

  test "should show slot_name" do
    get :show, id: @slot_name
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @slot_name
    assert_response :success
  end

  test "should update slot_name" do
    patch :update, id: @slot_name, slot_name: { dounyuu: @slot_name.dounyuu, img: @slot_name.img, name: @slot_name.name, setumei: @slot_name.setumei }
    assert_redirected_to slot_name_path(assigns(:slot_name))
  end

  test "should destroy slot_name" do
    assert_difference('SlotName.count', -1) do
      delete :destroy, id: @slot_name
    end

    assert_redirected_to slot_names_path
  end
end
