require 'test_helper'

class ContractantsControllerTest < ActionController::TestCase
  setup do
    @contractant = contractants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contractants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contractant" do
    assert_difference('Contractant.count') do
      post :create, contractant: { password: @contractant.password, username: @contractant.username }
    end

    assert_redirected_to contractant_path(assigns(:contractant))
  end

  test "should show contractant" do
    get :show, id: @contractant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contractant
    assert_response :success
  end

  test "should update contractant" do
    put :update, id: @contractant, contractant: { password: @contractant.password, username: @contractant.username }
    assert_redirected_to contractant_path(assigns(:contractant))
  end

  test "should destroy contractant" do
    assert_difference('Contractant.count', -1) do
      delete :destroy, id: @contractant
    end

    assert_redirected_to contractants_path
  end
end
