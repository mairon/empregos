require 'test_helper'

class NacionalidadesControllerTest < ActionController::TestCase
  setup do
    @nacionalidade = nacionalidades(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nacionalidades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nacionalidade" do
    assert_difference('Nacionalidade.count') do
      post :create, nacionalidade: { nome: @nacionalidade.nome }
    end

    assert_redirected_to nacionalidade_path(assigns(:nacionalidade))
  end

  test "should show nacionalidade" do
    get :show, id: @nacionalidade
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nacionalidade
    assert_response :success
  end

  test "should update nacionalidade" do
    patch :update, id: @nacionalidade, nacionalidade: { nome: @nacionalidade.nome }
    assert_redirected_to nacionalidade_path(assigns(:nacionalidade))
  end

  test "should destroy nacionalidade" do
    assert_difference('Nacionalidade.count', -1) do
      delete :destroy, id: @nacionalidade
    end

    assert_redirected_to nacionalidades_path
  end
end
