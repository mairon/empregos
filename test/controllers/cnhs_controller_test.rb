require 'test_helper'

class CnhsControllerTest < ActionController::TestCase
  setup do
    @cnh = cnhs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cnhs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cnh" do
    assert_difference('Cnh.count') do
      post :create, cnh: { nome: @cnh.nome, status: @cnh.status }
    end

    assert_redirected_to cnh_path(assigns(:cnh))
  end

  test "should show cnh" do
    get :show, id: @cnh
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cnh
    assert_response :success
  end

  test "should update cnh" do
    patch :update, id: @cnh, cnh: { nome: @cnh.nome, status: @cnh.status }
    assert_redirected_to cnh_path(assigns(:cnh))
  end

  test "should destroy cnh" do
    assert_difference('Cnh.count', -1) do
      delete :destroy, id: @cnh
    end

    assert_redirected_to cnhs_path
  end
end
