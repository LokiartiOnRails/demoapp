require 'test_helper'

class UdersControllerTest < ActionController::TestCase
  setup do
    @uder = uders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:uders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create uder" do
    assert_difference('Uder.count') do
      post :create, uder: { email: @uder.email, name: @uder.name }
    end

    assert_redirected_to uder_path(assigns(:uder))
  end

  test "should show uder" do
    get :show, id: @uder
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @uder
    assert_response :success
  end

  test "should update uder" do
    patch :update, id: @uder, uder: { email: @uder.email, name: @uder.name }
    assert_redirected_to uder_path(assigns(:uder))
  end

  test "should destroy uder" do
    assert_difference('Uder.count', -1) do
      delete :destroy, id: @uder
    end

    assert_redirected_to uders_path
  end
end
