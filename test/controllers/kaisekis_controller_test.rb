require 'test_helper'

class KaisekisControllerTest < ActionController::TestCase
  setup do
    @kaiseki = kaisekis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kaisekis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kaiseki" do
    assert_difference('Kaiseki.count') do
      post :create, kaiseki: { kiji: @kaiseki.kiji, slot_name_id: @kaiseki.slot_name_id, title: @kaiseki.title }
    end

    assert_redirected_to kaiseki_path(assigns(:kaiseki))
  end

  test "should show kaiseki" do
    get :show, id: @kaiseki
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kaiseki
    assert_response :success
  end

  test "should update kaiseki" do
    patch :update, id: @kaiseki, kaiseki: { kiji: @kaiseki.kiji, slot_name_id: @kaiseki.slot_name_id, title: @kaiseki.title }
    assert_redirected_to kaiseki_path(assigns(:kaiseki))
  end

  test "should destroy kaiseki" do
    assert_difference('Kaiseki.count', -1) do
      delete :destroy, id: @kaiseki
    end

    assert_redirected_to kaisekis_path
  end
end
