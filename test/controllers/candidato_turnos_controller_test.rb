require 'test_helper'

class CandidatoTurnosControllerTest < ActionController::TestCase
  setup do
    @candidato_turno = candidato_turnos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:candidato_turnos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create candidato_turno" do
    assert_difference('CandidatoTurno.count') do
      post :create, candidato_turno: { candidato_id: @candidato_turno.candidato_id, turno_id: @candidato_turno.turno_id }
    end

    assert_redirected_to candidato_turno_path(assigns(:candidato_turno))
  end

  test "should show candidato_turno" do
    get :show, id: @candidato_turno
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @candidato_turno
    assert_response :success
  end

  test "should update candidato_turno" do
    patch :update, id: @candidato_turno, candidato_turno: { candidato_id: @candidato_turno.candidato_id, turno_id: @candidato_turno.turno_id }
    assert_redirected_to candidato_turno_path(assigns(:candidato_turno))
  end

  test "should destroy candidato_turno" do
    assert_difference('CandidatoTurno.count', -1) do
      delete :destroy, id: @candidato_turno
    end

    assert_redirected_to candidato_turnos_path
  end
end
