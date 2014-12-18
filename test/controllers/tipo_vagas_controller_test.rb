require 'test_helper'

class TipoVagasControllerTest < ActionController::TestCase
  setup do
    @tipo_vaga = tipo_vagas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_vagas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_vaga" do
    assert_difference('TipoVaga.count') do
      post :create, tipo_vaga: { nome: @tipo_vaga.nome }
    end

    assert_redirected_to tipo_vaga_path(assigns(:tipo_vaga))
  end

  test "should show tipo_vaga" do
    get :show, id: @tipo_vaga
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_vaga
    assert_response :success
  end

  test "should update tipo_vaga" do
    patch :update, id: @tipo_vaga, tipo_vaga: { nome: @tipo_vaga.nome }
    assert_redirected_to tipo_vaga_path(assigns(:tipo_vaga))
  end

  test "should destroy tipo_vaga" do
    assert_difference('TipoVaga.count', -1) do
      delete :destroy, id: @tipo_vaga
    end

    assert_redirected_to tipo_vagas_path
  end
end
