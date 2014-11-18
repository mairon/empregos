require 'test_helper'

class DocumentosEmpresaPerfilsControllerTest < ActionController::TestCase
  setup do
    @documentos_empresa_perfil = documentos_empresa_perfils(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:documentos_empresa_perfils)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create documentos_empresa_perfil" do
    assert_difference('DocumentosEmpresaPerfil.count') do
      post :create, documentos_empresa_perfil: { documento_id: @documentos_empresa_perfil.documento_id, empresa_perfil_id: @documentos_empresa_perfil.empresa_perfil_id }
    end

    assert_redirected_to documentos_empresa_perfil_path(assigns(:documentos_empresa_perfil))
  end

  test "should show documentos_empresa_perfil" do
    get :show, id: @documentos_empresa_perfil
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @documentos_empresa_perfil
    assert_response :success
  end

  test "should update documentos_empresa_perfil" do
    patch :update, id: @documentos_empresa_perfil, documentos_empresa_perfil: { documento_id: @documentos_empresa_perfil.documento_id, empresa_perfil_id: @documentos_empresa_perfil.empresa_perfil_id }
    assert_redirected_to documentos_empresa_perfil_path(assigns(:documentos_empresa_perfil))
  end

  test "should destroy documentos_empresa_perfil" do
    assert_difference('DocumentosEmpresaPerfil.count', -1) do
      delete :destroy, id: @documentos_empresa_perfil
    end

    assert_redirected_to documentos_empresa_perfils_path
  end
end
