require 'test_helper'

class CnhsVagasControllerTest < ActionController::TestCase
  setup do
    @cnhs_vaga = cnhs_vagas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cnhs_vagas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cnhs_vaga" do
    assert_difference('CnhsVaga.count') do
      post :create, cnhs_vaga: { cnh_id: @cnhs_vaga.cnh_id, vaga_id: @cnhs_vaga.vaga_id }
    end

    assert_redirected_to cnhs_vaga_path(assigns(:cnhs_vaga))
  end

  test "should show cnhs_vaga" do
    get :show, id: @cnhs_vaga
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cnhs_vaga
    assert_response :success
  end

  test "should update cnhs_vaga" do
    patch :update, id: @cnhs_vaga, cnhs_vaga: { cnh_id: @cnhs_vaga.cnh_id, vaga_id: @cnhs_vaga.vaga_id }
    assert_redirected_to cnhs_vaga_path(assigns(:cnhs_vaga))
  end

  test "should destroy cnhs_vaga" do
    assert_difference('CnhsVaga.count', -1) do
      delete :destroy, id: @cnhs_vaga
    end

    assert_redirected_to cnhs_vagas_path
  end
end
