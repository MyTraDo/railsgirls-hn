require 'test_helper'

class IeadsControllerTest < ActionController::TestCase
  setup do
    @iead = ieads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ieads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create iead" do
    assert_difference('Iead.count') do
      post :create, iead: { description: @iead.description, name: @iead.name, picture: @iead.picture }
    end

    assert_redirected_to iead_path(assigns(:iead))
  end

  test "should show iead" do
    get :show, id: @iead
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @iead
    assert_response :success
  end

  test "should update iead" do
    patch :update, id: @iead, iead: { description: @iead.description, name: @iead.name, picture: @iead.picture }
    assert_redirected_to iead_path(assigns(:iead))
  end

  test "should destroy iead" do
    assert_difference('Iead.count', -1) do
      delete :destroy, id: @iead
    end

    assert_redirected_to ieads_path
  end
end
