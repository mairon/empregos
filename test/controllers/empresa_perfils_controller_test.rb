require 'test_helper'

class EmpresaPerfilsControllerTest < ActionController::TestCase
  setup do
    @empresa_perfil = empresa_perfils(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:empresa_perfils)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create empresa_perfil" do
    assert_difference('EmpresaPerfil.count') do
      post :create, empresa_perfil: { ali_ajuda: @empresa_perfil.ali_ajuda, ali_ajuda_valor: @empresa_perfil.ali_ajuda_valor, ali_combinar: @empresa_perfil.ali_combinar, ali_refeitorio_proprio: @empresa_perfil.ali_refeitorio_proprio, ali_vale_refeicao: @empresa_perfil.ali_vale_refeicao, ali_vale_valor: @empresa_perfil.ali_vale_valor, empresa_id: @empresa_perfil.empresa_id, trab_domingo_feriados: @empresa_perfil.trab_domingo_feriados, trab_sabado: @empresa_perfil.trab_sabado, trans_ajuda: @empresa_perfil.trans_ajuda, trans_ajuda_valor: @empresa_perfil.trans_ajuda_valor, trans_combinar: @empresa_perfil.trans_combinar, trans_vale_transporte: @empresa_perfil.trans_vale_transporte, trans_vale_valor: @empresa_perfil.trans_vale_valor }
    end

    assert_redirected_to empresa_perfil_path(assigns(:empresa_perfil))
  end

  test "should show empresa_perfil" do
    get :show, id: @empresa_perfil
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @empresa_perfil
    assert_response :success
  end

  test "should update empresa_perfil" do
    patch :update, id: @empresa_perfil, empresa_perfil: { ali_ajuda: @empresa_perfil.ali_ajuda, ali_ajuda_valor: @empresa_perfil.ali_ajuda_valor, ali_combinar: @empresa_perfil.ali_combinar, ali_refeitorio_proprio: @empresa_perfil.ali_refeitorio_proprio, ali_vale_refeicao: @empresa_perfil.ali_vale_refeicao, ali_vale_valor: @empresa_perfil.ali_vale_valor, empresa_id: @empresa_perfil.empresa_id, trab_domingo_feriados: @empresa_perfil.trab_domingo_feriados, trab_sabado: @empresa_perfil.trab_sabado, trans_ajuda: @empresa_perfil.trans_ajuda, trans_ajuda_valor: @empresa_perfil.trans_ajuda_valor, trans_combinar: @empresa_perfil.trans_combinar, trans_vale_transporte: @empresa_perfil.trans_vale_transporte, trans_vale_valor: @empresa_perfil.trans_vale_valor }
    assert_redirected_to empresa_perfil_path(assigns(:empresa_perfil))
  end

  test "should destroy empresa_perfil" do
    assert_difference('EmpresaPerfil.count', -1) do
      delete :destroy, id: @empresa_perfil
    end

    assert_redirected_to empresa_perfils_path
  end
end
