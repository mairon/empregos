require 'test_helper'

class IdiomasVagasControllerTest < ActionController::TestCase
  setup do
    @idiomas_vaga = idiomas_vagas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:idiomas_vagas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create idiomas_vaga" do
    assert_difference('IdiomasVaga.count') do
      post :create, idiomas_vaga: { idioma_id: @idiomas_vaga.idioma_id, nivel: @idiomas_vaga.nivel, vaga_id: @idiomas_vaga.vaga_id }
    end

    assert_redirected_to idiomas_vaga_path(assigns(:idiomas_vaga))
  end

  test "should show idiomas_vaga" do
    get :show, id: @idiomas_vaga
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @idiomas_vaga
    assert_response :success
  end

  test "should update idiomas_vaga" do
    patch :update, id: @idiomas_vaga, idiomas_vaga: { idioma_id: @idiomas_vaga.idioma_id, nivel: @idiomas_vaga.nivel, vaga_id: @idiomas_vaga.vaga_id }
    assert_redirected_to idiomas_vaga_path(assigns(:idiomas_vaga))
  end

  test "should destroy idiomas_vaga" do
    assert_difference('IdiomasVaga.count', -1) do
      delete :destroy, id: @idiomas_vaga
    end

    assert_redirected_to idiomas_vagas_path
  end
end
