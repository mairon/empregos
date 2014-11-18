require 'test_helper'

class DiasSemanasVagasControllerTest < ActionController::TestCase
  setup do
    @dias_semanas_vaga = dias_semanas_vagas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dias_semanas_vagas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dias_semanas_vaga" do
    assert_difference('DiasSemanasVaga.count') do
      post :create, dias_semanas_vaga: { nome: @dias_semanas_vaga.nome, vaga_id: @dias_semanas_vaga.vaga_id }
    end

    assert_redirected_to dias_semanas_vaga_path(assigns(:dias_semanas_vaga))
  end

  test "should show dias_semanas_vaga" do
    get :show, id: @dias_semanas_vaga
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dias_semanas_vaga
    assert_response :success
  end

  test "should update dias_semanas_vaga" do
    patch :update, id: @dias_semanas_vaga, dias_semanas_vaga: { nome: @dias_semanas_vaga.nome, vaga_id: @dias_semanas_vaga.vaga_id }
    assert_redirected_to dias_semanas_vaga_path(assigns(:dias_semanas_vaga))
  end

  test "should destroy dias_semanas_vaga" do
    assert_difference('DiasSemanasVaga.count', -1) do
      delete :destroy, id: @dias_semanas_vaga
    end

    assert_redirected_to dias_semanas_vagas_path
  end
end
