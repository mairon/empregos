require 'test_helper'

class CandidatosCargosControllerTest < ActionController::TestCase
  setup do
    @candidatos_cargo = candidatos_cargos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:candidatos_cargos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create candidatos_cargo" do
    assert_difference('CandidatosCargo.count') do
      post :create, candidatos_cargo: { candidato_id: @candidatos_cargo.candidato_id, cargo_id: @candidatos_cargo.cargo_id }
    end

    assert_redirected_to candidatos_cargo_path(assigns(:candidatos_cargo))
  end

  test "should show candidatos_cargo" do
    get :show, id: @candidatos_cargo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @candidatos_cargo
    assert_response :success
  end

  test "should update candidatos_cargo" do
    patch :update, id: @candidatos_cargo, candidatos_cargo: { candidato_id: @candidatos_cargo.candidato_id, cargo_id: @candidatos_cargo.cargo_id }
    assert_redirected_to candidatos_cargo_path(assigns(:candidatos_cargo))
  end

  test "should destroy candidatos_cargo" do
    assert_difference('CandidatosCargo.count', -1) do
      delete :destroy, id: @candidatos_cargo
    end

    assert_redirected_to candidatos_cargos_path
  end
end
