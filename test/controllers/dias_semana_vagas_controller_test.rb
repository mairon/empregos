require 'test_helper'

class DiasSemanaVagasControllerTest < ActionController::TestCase
  setup do
    @dias_semana_vaga = dias_semana_vagas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dias_semana_vagas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dias_semana_vaga" do
    assert_difference('DiasSemanaVaga.count') do
      post :create, dias_semana_vaga: { nome: @dias_semana_vaga.nome, vaga_id: @dias_semana_vaga.vaga_id }
    end

    assert_redirected_to dias_semana_vaga_path(assigns(:dias_semana_vaga))
  end

  test "should show dias_semana_vaga" do
    get :show, id: @dias_semana_vaga
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dias_semana_vaga
    assert_response :success
  end

  test "should update dias_semana_vaga" do
    patch :update, id: @dias_semana_vaga, dias_semana_vaga: { nome: @dias_semana_vaga.nome, vaga_id: @dias_semana_vaga.vaga_id }
    assert_redirected_to dias_semana_vaga_path(assigns(:dias_semana_vaga))
  end

  test "should destroy dias_semana_vaga" do
    assert_difference('DiasSemanaVaga.count', -1) do
      delete :destroy, id: @dias_semana_vaga
    end

    assert_redirected_to dias_semana_vagas_path
  end
end
