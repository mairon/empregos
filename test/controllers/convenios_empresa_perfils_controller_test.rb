require 'test_helper'

class ConveniosEmpresaPerfilsControllerTest < ActionController::TestCase
  setup do
    @convenios_empresa_perfil = convenios_empresa_perfils(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:convenios_empresa_perfils)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create convenios_empresa_perfil" do
    assert_difference('ConveniosEmpresaPerfil.count') do
      post :create, convenios_empresa_perfil: { convenio_id: @convenios_empresa_perfil.convenio_id, empresa_perfil_id: @convenios_empresa_perfil.empresa_perfil_id }
    end

    assert_redirected_to convenios_empresa_perfil_path(assigns(:convenios_empresa_perfil))
  end

  test "should show convenios_empresa_perfil" do
    get :show, id: @convenios_empresa_perfil
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @convenios_empresa_perfil
    assert_response :success
  end

  test "should update convenios_empresa_perfil" do
    patch :update, id: @convenios_empresa_perfil, convenios_empresa_perfil: { convenio_id: @convenios_empresa_perfil.convenio_id, empresa_perfil_id: @convenios_empresa_perfil.empresa_perfil_id }
    assert_redirected_to convenios_empresa_perfil_path(assigns(:convenios_empresa_perfil))
  end

  test "should destroy convenios_empresa_perfil" do
    assert_difference('ConveniosEmpresaPerfil.count', -1) do
      delete :destroy, id: @convenios_empresa_perfil
    end

    assert_redirected_to convenios_empresa_perfils_path
  end
end
