require 'test_helper'

class CandidatoFormacaosControllerTest < ActionController::TestCase
  setup do
    @candidato_formacao = candidato_formacaos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:candidato_formacaos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create candidato_formacao" do
    assert_difference('CandidatoFormacao.count') do
      post :create, candidato_formacao: { curso_id: @candidato_formacao.curso_id, estado_id: @candidato_formacao.estado_id, final_ano: @candidato_formacao.final_ano, final_mes: @candidato_formacao.final_mes, formacao_id: @candidato_formacao.formacao_id, inicio_ano: @candidato_formacao.inicio_ano, inicio_mes: @candidato_formacao.inicio_mes, instituicao: @candidato_formacao.instituicao, pais_id: @candidato_formacao.pais_id, status: @candidato_formacao.status }
    end

    assert_redirected_to candidato_formacao_path(assigns(:candidato_formacao))
  end

  test "should show candidato_formacao" do
    get :show, id: @candidato_formacao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @candidato_formacao
    assert_response :success
  end

  test "should update candidato_formacao" do
    patch :update, id: @candidato_formacao, candidato_formacao: { curso_id: @candidato_formacao.curso_id, estado_id: @candidato_formacao.estado_id, final_ano: @candidato_formacao.final_ano, final_mes: @candidato_formacao.final_mes, formacao_id: @candidato_formacao.formacao_id, inicio_ano: @candidato_formacao.inicio_ano, inicio_mes: @candidato_formacao.inicio_mes, instituicao: @candidato_formacao.instituicao, pais_id: @candidato_formacao.pais_id, status: @candidato_formacao.status }
    assert_redirected_to candidato_formacao_path(assigns(:candidato_formacao))
  end

  test "should destroy candidato_formacao" do
    assert_difference('CandidatoFormacao.count', -1) do
      delete :destroy, id: @candidato_formacao
    end

    assert_redirected_to candidato_formacaos_path
  end
end
