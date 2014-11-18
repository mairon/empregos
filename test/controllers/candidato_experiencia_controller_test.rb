require 'test_helper'

class CandidatoExperienciaControllerTest < ActionController::TestCase
  setup do
    @candidato_experiencium = candidato_experiencia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:candidato_experiencia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create candidato_experiencium" do
    assert_difference('CandidatoExperiencium.count') do
      post :create, candidato_experiencium: { candidato_id: @candidato_experiencium.candidato_id, cargo_id: @candidato_experiencium.cargo_id, city_id: @candidato_experiencium.city_id, descricao_ativ: @candidato_experiencium.descricao_ativ, empresa_nome: @candidato_experiencium.empresa_nome, state_id: @candidato_experiencium.state_id }
    end

    assert_redirected_to candidato_experiencium_path(assigns(:candidato_experiencium))
  end

  test "should show candidato_experiencium" do
    get :show, id: @candidato_experiencium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @candidato_experiencium
    assert_response :success
  end

  test "should update candidato_experiencium" do
    patch :update, id: @candidato_experiencium, candidato_experiencium: { candidato_id: @candidato_experiencium.candidato_id, cargo_id: @candidato_experiencium.cargo_id, city_id: @candidato_experiencium.city_id, descricao_ativ: @candidato_experiencium.descricao_ativ, empresa_nome: @candidato_experiencium.empresa_nome, state_id: @candidato_experiencium.state_id }
    assert_redirected_to candidato_experiencium_path(assigns(:candidato_experiencium))
  end

  test "should destroy candidato_experiencium" do
    assert_difference('CandidatoExperiencium.count', -1) do
      delete :destroy, id: @candidato_experiencium
    end

    assert_redirected_to candidato_experiencia_path
  end
end
