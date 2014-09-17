require 'test_helper'

class Admin::DocumentosControllerTest < ActionController::TestCase
  setup do
    @admin_documento = admin_documentos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_documentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_documento" do
    assert_difference('Admin::Documento.count') do
      post :create, admin_documento: { nome: @admin_documento.nome, status: @admin_documento.status }
    end

    assert_redirected_to admin_documento_path(assigns(:admin_documento))
  end

  test "should show admin_documento" do
    get :show, id: @admin_documento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_documento
    assert_response :success
  end

  test "should update admin_documento" do
    patch :update, id: @admin_documento, admin_documento: { nome: @admin_documento.nome, status: @admin_documento.status }
    assert_redirected_to admin_documento_path(assigns(:admin_documento))
  end

  test "should destroy admin_documento" do
    assert_difference('Admin::Documento.count', -1) do
      delete :destroy, id: @admin_documento
    end

    assert_redirected_to admin_documentos_path
  end
end
