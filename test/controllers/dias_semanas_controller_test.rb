require 'test_helper'

class DiasSemanasControllerTest < ActionController::TestCase
  setup do
    @dias_semana = dias_semanas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dias_semanas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dias_semana" do
    assert_difference('DiasSemana.count') do
      post :create, dias_semana: { nome: @dias_semana.nome }
    end

    assert_redirected_to dias_semana_path(assigns(:dias_semana))
  end

  test "should show dias_semana" do
    get :show, id: @dias_semana
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dias_semana
    assert_response :success
  end

  test "should update dias_semana" do
    patch :update, id: @dias_semana, dias_semana: { nome: @dias_semana.nome }
    assert_redirected_to dias_semana_path(assigns(:dias_semana))
  end

  test "should destroy dias_semana" do
    assert_difference('DiasSemana.count', -1) do
      delete :destroy, id: @dias_semana
    end

    assert_redirected_to dias_semanas_path
  end
end
