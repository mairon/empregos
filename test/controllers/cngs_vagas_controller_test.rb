require 'test_helper'

class CngsVagasControllerTest < ActionController::TestCase
  setup do
    @cngs_vaga = cngs_vagas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cngs_vagas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cngs_vaga" do
    assert_difference('CngsVaga.count') do
      post :create, cngs_vaga: { cnh_id: @cngs_vaga.cnh_id, vaga_id: @cngs_vaga.vaga_id }
    end

    assert_redirected_to cngs_vaga_path(assigns(:cngs_vaga))
  end

  test "should show cngs_vaga" do
    get :show, id: @cngs_vaga
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cngs_vaga
    assert_response :success
  end

  test "should update cngs_vaga" do
    patch :update, id: @cngs_vaga, cngs_vaga: { cnh_id: @cngs_vaga.cnh_id, vaga_id: @cngs_vaga.vaga_id }
    assert_redirected_to cngs_vaga_path(assigns(:cngs_vaga))
  end

  test "should destroy cngs_vaga" do
    assert_difference('CngsVaga.count', -1) do
      delete :destroy, id: @cngs_vaga
    end

    assert_redirected_to cngs_vagas_path
  end
end
