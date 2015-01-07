require 'test_helper'

class CandidatosTurnosControllerTest < ActionController::TestCase
  setup do
    @candidatos_turno = candidatos_turnos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:candidatos_turnos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create candidatos_turno" do
    assert_difference('CandidatosTurno.count') do
      post :create, candidatos_turno: { candidato_id: @candidatos_turno.candidato_id, turno_id: @candidatos_turno.turno_id }
    end

    assert_redirected_to candidatos_turno_path(assigns(:candidatos_turno))
  end

  test "should show candidatos_turno" do
    get :show, id: @candidatos_turno
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @candidatos_turno
    assert_response :success
  end

  test "should update candidatos_turno" do
    patch :update, id: @candidatos_turno, candidatos_turno: { candidato_id: @candidatos_turno.candidato_id, turno_id: @candidatos_turno.turno_id }
    assert_redirected_to candidatos_turno_path(assigns(:candidatos_turno))
  end

  test "should destroy candidatos_turno" do
    assert_difference('CandidatosTurno.count', -1) do
      delete :destroy, id: @candidatos_turno
    end

    assert_redirected_to candidatos_turnos_path
  end
end
