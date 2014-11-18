require 'test_helper'

class VagasControllerTest < ActionController::TestCase
  setup do
    @vaga = vagas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vagas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vaga" do
    assert_difference('Vaga.count') do
      post :create, vaga: { area_superior: @vaga.area_superior, area_tecnologo: @vaga.area_tecnologo, autonomo: @vaga.autonomo, cargo_id: @vaga.cargo_id, comercial_tipo: @vaga.comercial_tipo, comerical: @vaga.comerical, conhecimentos_desejaveis: @vaga.conhecimentos_desejaveis, cursando_periodo: @vaga.cursando_periodo, efetivo_carteira: @vaga.efetivo_carteira, empresa_id: @vaga.empresa_id, escolaridade: @vaga.escolaridade, estado_civil: @vaga.estado_civil, experiencia: @vaga.experiencia, extra: @vaga.extra, free_lancer: @vaga.free_lancer, numero_vagas: @vaga.numero_vagas, outros_detalhes_candito: @vaga.outros_detalhes_candito, periodo: @vaga.periodo, pne: @vaga.pne, representante: @vaga.representante, sexo: @vaga.sexo, status_escolaridade: @vaga.status_escolaridade, temporario: @vaga.temporario, trainer: @vaga.trainer }
    end

    assert_redirected_to vaga_path(assigns(:vaga))
  end

  test "should show vaga" do
    get :show, id: @vaga
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vaga
    assert_response :success
  end

  test "should update vaga" do
    patch :update, id: @vaga, vaga: { area_superior: @vaga.area_superior, area_tecnologo: @vaga.area_tecnologo, autonomo: @vaga.autonomo, cargo_id: @vaga.cargo_id, comercial_tipo: @vaga.comercial_tipo, comerical: @vaga.comerical, conhecimentos_desejaveis: @vaga.conhecimentos_desejaveis, cursando_periodo: @vaga.cursando_periodo, efetivo_carteira: @vaga.efetivo_carteira, empresa_id: @vaga.empresa_id, escolaridade: @vaga.escolaridade, estado_civil: @vaga.estado_civil, experiencia: @vaga.experiencia, extra: @vaga.extra, free_lancer: @vaga.free_lancer, numero_vagas: @vaga.numero_vagas, outros_detalhes_candito: @vaga.outros_detalhes_candito, periodo: @vaga.periodo, pne: @vaga.pne, representante: @vaga.representante, sexo: @vaga.sexo, status_escolaridade: @vaga.status_escolaridade, temporario: @vaga.temporario, trainer: @vaga.trainer }
    assert_redirected_to vaga_path(assigns(:vaga))
  end

  test "should destroy vaga" do
    assert_difference('Vaga.count', -1) do
      delete :destroy, id: @vaga
    end

    assert_redirected_to vagas_path
  end
end
