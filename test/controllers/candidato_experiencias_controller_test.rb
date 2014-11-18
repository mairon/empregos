require 'test_helper'

class CandidatoExperienciasControllerTest < ActionController::TestCase
  setup do
    @candidato_experiencia = candidato_experiencias(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:candidato_experiencias)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create candidato_experiencia" do
    assert_difference('CandidatoExperiencia.count') do
      post :create, candidato_experiencia: { candidato_id: @candidato_experiencia.candidato_id, cargo_id: @candidato_experiencia.cargo_id, city_id: @candidato_experiencia.city_id, descricao_ativ: @candidato_experiencia.descricao_ativ, empresa_nome: @candidato_experiencia.empresa_nome, state_id: @candidato_experiencia.state_id }
    end

    assert_redirected_to candidato_experiencia_path(assigns(:candidato_experiencia))
  end

  test "should show candidato_experiencia" do
    get :show, id: @candidato_experiencia
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @candidato_experiencia
    assert_response :success
  end

  test "should update candidato_experiencia" do
    patch :update, id: @candidato_experiencia, candidato_experiencia: { candidato_id: @candidato_experiencia.candidato_id, cargo_id: @candidato_experiencia.cargo_id, city_id: @candidato_experiencia.city_id, descricao_ativ: @candidato_experiencia.descricao_ativ, empresa_nome: @candidato_experiencia.empresa_nome, state_id: @candidato_experiencia.state_id }
    assert_redirected_to candidato_experiencia_path(assigns(:candidato_experiencia))
  end

  test "should destroy candidato_experiencia" do
    assert_difference('CandidatoExperiencia.count', -1) do
      delete :destroy, id: @candidato_experiencia
    end

    assert_redirected_to candidato_experiencias_path
  end
end
