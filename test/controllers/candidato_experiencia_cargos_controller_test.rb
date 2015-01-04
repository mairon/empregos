require 'test_helper'

class CandidatoExperienciaCargosControllerTest < ActionController::TestCase
  setup do
    @candidato_experiencia_cargo = candidato_experiencia_cargos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:candidato_experiencia_cargos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create candidato_experiencia_cargo" do
    assert_difference('CandidatoExperienciaCargo.count') do
      post :create, candidato_experiencia_cargo: { candidato_experiencia_id: @candidato_experiencia_cargo.candidato_experiencia_id, candidato_id: @candidato_experiencia_cargo.candidato_id, cargo_id: @candidato_experiencia_cargo.cargo_id }
    end

    assert_redirected_to candidato_experiencia_cargo_path(assigns(:candidato_experiencia_cargo))
  end

  test "should show candidato_experiencia_cargo" do
    get :show, id: @candidato_experiencia_cargo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @candidato_experiencia_cargo
    assert_response :success
  end

  test "should update candidato_experiencia_cargo" do
    patch :update, id: @candidato_experiencia_cargo, candidato_experiencia_cargo: { candidato_experiencia_id: @candidato_experiencia_cargo.candidato_experiencia_id, candidato_id: @candidato_experiencia_cargo.candidato_id, cargo_id: @candidato_experiencia_cargo.cargo_id }
    assert_redirected_to candidato_experiencia_cargo_path(assigns(:candidato_experiencia_cargo))
  end

  test "should destroy candidato_experiencia_cargo" do
    assert_difference('CandidatoExperienciaCargo.count', -1) do
      delete :destroy, id: @candidato_experiencia_cargo
    end

    assert_redirected_to candidato_experiencia_cargos_path
  end
end
