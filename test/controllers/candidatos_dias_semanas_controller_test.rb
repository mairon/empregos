require 'test_helper'

class CandidatosDiasSemanasControllerTest < ActionController::TestCase
  setup do
    @candidatos_dias_semana = candidatos_dias_semanas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:candidatos_dias_semanas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create candidatos_dias_semana" do
    assert_difference('CandidatosDiasSemana.count') do
      post :create, candidatos_dias_semana: { candidato_id: @candidatos_dias_semana.candidato_id, dias_semana_id: @candidatos_dias_semana.dias_semana_id }
    end

    assert_redirected_to candidatos_dias_semana_path(assigns(:candidatos_dias_semana))
  end

  test "should show candidatos_dias_semana" do
    get :show, id: @candidatos_dias_semana
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @candidatos_dias_semana
    assert_response :success
  end

  test "should update candidatos_dias_semana" do
    patch :update, id: @candidatos_dias_semana, candidatos_dias_semana: { candidato_id: @candidatos_dias_semana.candidato_id, dias_semana_id: @candidatos_dias_semana.dias_semana_id }
    assert_redirected_to candidatos_dias_semana_path(assigns(:candidatos_dias_semana))
  end

  test "should destroy candidatos_dias_semana" do
    assert_difference('CandidatosDiasSemana.count', -1) do
      delete :destroy, id: @candidatos_dias_semana
    end

    assert_redirected_to candidatos_dias_semanas_path
  end
end
