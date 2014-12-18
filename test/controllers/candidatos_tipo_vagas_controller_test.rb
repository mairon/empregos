require 'test_helper'

class CandidatosTipoVagasControllerTest < ActionController::TestCase
  setup do
    @candidatos_tipo_vaga = candidatos_tipo_vagas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:candidatos_tipo_vagas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create candidatos_tipo_vaga" do
    assert_difference('CandidatosTipoVaga.count') do
      post :create, candidatos_tipo_vaga: { candidato_id: @candidatos_tipo_vaga.candidato_id, tipo_vagas_id: @candidatos_tipo_vaga.tipo_vagas_id }
    end

    assert_redirected_to candidatos_tipo_vaga_path(assigns(:candidatos_tipo_vaga))
  end

  test "should show candidatos_tipo_vaga" do
    get :show, id: @candidatos_tipo_vaga
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @candidatos_tipo_vaga
    assert_response :success
  end

  test "should update candidatos_tipo_vaga" do
    patch :update, id: @candidatos_tipo_vaga, candidatos_tipo_vaga: { candidato_id: @candidatos_tipo_vaga.candidato_id, tipo_vagas_id: @candidatos_tipo_vaga.tipo_vagas_id }
    assert_redirected_to candidatos_tipo_vaga_path(assigns(:candidatos_tipo_vaga))
  end

  test "should destroy candidatos_tipo_vaga" do
    assert_difference('CandidatosTipoVaga.count', -1) do
      delete :destroy, id: @candidatos_tipo_vaga
    end

    assert_redirected_to candidatos_tipo_vagas_path
  end
end
