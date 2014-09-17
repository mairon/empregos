require 'test_helper'

class EmpresasControllerTest < ActionController::TestCase
  setup do
    @empresa = empresas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:empresas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create empresa" do
    assert_difference('Empresa.count') do
      post :create, empresa: { cep: @empresa.cep, city_id: @empresa.city_id, cnpj: @empresa.cnpj, complemento: @empresa.complemento, email_receb: @empresa.email_receb, endereco: @empresa.endereco, endero_entrevista: @empresa.endero_entrevista, entev_ramal_resp: @empresa.entev_ramal_resp, entrev_cep: @empresa.entrev_cep, entrev_city_id: @empresa.entrev_city_id, entrev_complemento: @empresa.entrev_complemento, entrev_email: @empresa.entrev_email, entrev_endereco: @empresa.entrev_endereco, entrev_fone_resp: @empresa.entrev_fone_resp, entrev_referencia: @empresa.entrev_referencia, entrev_regiao: @empresa.entrev_regiao, entrev_state_id: @empresa.entrev_state_id, fone01: @empresa.fone01, fone02: @empresa.fone02, fone03: @empresa.fone03, fone_resp: @empresa.fone_resp, nome_fantasia: @empresa.nome_fantasia, ramal01: @empresa.ramal01, ramal02: @empresa.ramal02, ramal03: @empresa.ramal03, ramal_resp: @empresa.ramal_resp, ramo_id: @empresa.ramo_id, razao_social: @empresa.razao_social, referencia: @empresa.referencia, regiao: @empresa.regiao, responsavel: @empresa.responsavel, site: @empresa.site, state_id: @empresa.state_id, unidade: @empresa.unidade }
    end

    assert_redirected_to empresa_path(assigns(:empresa))
  end

  test "should show empresa" do
    get :show, id: @empresa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @empresa
    assert_response :success
  end

  test "should update empresa" do
    patch :update, id: @empresa, empresa: { cep: @empresa.cep, city_id: @empresa.city_id, cnpj: @empresa.cnpj, complemento: @empresa.complemento, email_receb: @empresa.email_receb, endereco: @empresa.endereco, endero_entrevista: @empresa.endero_entrevista, entev_ramal_resp: @empresa.entev_ramal_resp, entrev_cep: @empresa.entrev_cep, entrev_city_id: @empresa.entrev_city_id, entrev_complemento: @empresa.entrev_complemento, entrev_email: @empresa.entrev_email, entrev_endereco: @empresa.entrev_endereco, entrev_fone_resp: @empresa.entrev_fone_resp, entrev_referencia: @empresa.entrev_referencia, entrev_regiao: @empresa.entrev_regiao, entrev_state_id: @empresa.entrev_state_id, fone01: @empresa.fone01, fone02: @empresa.fone02, fone03: @empresa.fone03, fone_resp: @empresa.fone_resp, nome_fantasia: @empresa.nome_fantasia, ramal01: @empresa.ramal01, ramal02: @empresa.ramal02, ramal03: @empresa.ramal03, ramal_resp: @empresa.ramal_resp, ramo_id: @empresa.ramo_id, razao_social: @empresa.razao_social, referencia: @empresa.referencia, regiao: @empresa.regiao, responsavel: @empresa.responsavel, site: @empresa.site, state_id: @empresa.state_id, unidade: @empresa.unidade }
    assert_redirected_to empresa_path(assigns(:empresa))
  end

  test "should destroy empresa" do
    assert_difference('Empresa.count', -1) do
      delete :destroy, id: @empresa
    end

    assert_redirected_to empresas_path
  end
end
