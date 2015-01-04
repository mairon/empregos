require 'test_helper'

class CandidatoExperienciasCargosControllerTest < ActionController::TestCase
  setup do
    @candidato_experiencias_cargo = candidato_experiencias_cargos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:candidato_experiencias_cargos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create candidato_experiencias_cargo" do
    assert_difference('CandidatoExperienciasCargo.count') do
      post :create, candidato_experiencias_cargo: { candidato_experiencia_id: @candidato_experiencias_cargo.candidato_experiencia_id, candidato_id: @candidato_experiencias_cargo.candidato_id, cargo_id: @candidato_experiencias_cargo.cargo_id }
    end

    assert_redirected_to candidato_experiencias_cargo_path(assigns(:candidato_experiencias_cargo))
  end

  test "should show candidato_experiencias_cargo" do
    get :show, id: @candidato_experiencias_cargo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @candidato_experiencias_cargo
    assert_response :success
  end

  test "should update candidato_experiencias_cargo" do
    patch :update, id: @candidato_experiencias_cargo, candidato_experiencias_cargo: { candidato_experiencia_id: @candidato_experiencias_cargo.candidato_experiencia_id, candidato_id: @candidato_experiencias_cargo.candidato_id, cargo_id: @candidato_experiencias_cargo.cargo_id }
    assert_redirected_to candidato_experiencias_cargo_path(assigns(:candidato_experiencias_cargo))
  end

  test "should destroy candidato_experiencias_cargo" do
    assert_difference('CandidatoExperienciasCargo.count', -1) do
      delete :destroy, id: @candidato_experiencias_cargo
    end

    assert_redirected_to candidato_experiencias_cargos_path
  end
end
