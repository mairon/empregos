require 'test_helper'

class Admin::RamosControllerTest < ActionController::TestCase
  setup do
    @admin_ramo = admin_ramos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_ramos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_ramo" do
    assert_difference('Admin::Ramo.count') do
      post :create, admin_ramo: { codigo: @admin_ramo.codigo, nome: @admin_ramo.nome, status: @admin_ramo.status }
    end

    assert_redirected_to admin_ramo_path(assigns(:admin_ramo))
  end

  test "should show admin_ramo" do
    get :show, id: @admin_ramo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_ramo
    assert_response :success
  end

  test "should update admin_ramo" do
    patch :update, id: @admin_ramo, admin_ramo: { codigo: @admin_ramo.codigo, nome: @admin_ramo.nome, status: @admin_ramo.status }
    assert_redirected_to admin_ramo_path(assigns(:admin_ramo))
  end

  test "should destroy admin_ramo" do
    assert_difference('Admin::Ramo.count', -1) do
      delete :destroy, id: @admin_ramo
    end

    assert_redirected_to admin_ramos_path
  end
end
