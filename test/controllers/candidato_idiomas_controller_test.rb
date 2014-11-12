require 'test_helper'

class CandidatoIdiomasControllerTest < ActionController::TestCase
  setup do
    @candidato_idioma = candidato_idiomas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:candidato_idiomas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create candidato_idioma" do
    assert_difference('CandidatoIdioma.count') do
      post :create, candidato_idioma: { estado: @candidato_idioma.estado, idioma_id: @candidato_idioma.idioma_id }
    end

    assert_redirected_to candidato_idioma_path(assigns(:candidato_idioma))
  end

  test "should show candidato_idioma" do
    get :show, id: @candidato_idioma
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @candidato_idioma
    assert_response :success
  end

  test "should update candidato_idioma" do
    patch :update, id: @candidato_idioma, candidato_idioma: { estado: @candidato_idioma.estado, idioma_id: @candidato_idioma.idioma_id }
    assert_redirected_to candidato_idioma_path(assigns(:candidato_idioma))
  end

  test "should destroy candidato_idioma" do
    assert_difference('CandidatoIdioma.count', -1) do
      delete :destroy, id: @candidato_idioma
    end

    assert_redirected_to candidato_idiomas_path
  end
end
