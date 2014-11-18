require 'test_helper'

class DiasSemanasEmpresaPerfilsControllerTest < ActionController::TestCase
  setup do
    @dias_semanas_empresa_perfil = dias_semanas_empresa_perfils(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dias_semanas_empresa_perfils)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dias_semanas_empresa_perfil" do
    assert_difference('DiasSemanasEmpresaPerfil.count') do
      post :create, dias_semanas_empresa_perfil: { dias_semana_id: @dias_semanas_empresa_perfil.dias_semana_id, empresa_perfil_id: @dias_semanas_empresa_perfil.empresa_perfil_id }
    end

    assert_redirected_to dias_semanas_empresa_perfil_path(assigns(:dias_semanas_empresa_perfil))
  end

  test "should show dias_semanas_empresa_perfil" do
    get :show, id: @dias_semanas_empresa_perfil
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dias_semanas_empresa_perfil
    assert_response :success
  end

  test "should update dias_semanas_empresa_perfil" do
    patch :update, id: @dias_semanas_empresa_perfil, dias_semanas_empresa_perfil: { dias_semana_id: @dias_semanas_empresa_perfil.dias_semana_id, empresa_perfil_id: @dias_semanas_empresa_perfil.empresa_perfil_id }
    assert_redirected_to dias_semanas_empresa_perfil_path(assigns(:dias_semanas_empresa_perfil))
  end

  test "should destroy dias_semanas_empresa_perfil" do
    assert_difference('DiasSemanasEmpresaPerfil.count', -1) do
      delete :destroy, id: @dias_semanas_empresa_perfil
    end

    assert_redirected_to dias_semanas_empresa_perfils_path
  end
end
