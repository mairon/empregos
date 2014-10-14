require 'test_helper'

class CandidatosControllerTest < ActionController::TestCase
  setup do
    @candidato = candidatos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:candidatos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create candidato" do
    assert_difference('Candidato.count') do
      post :create, candidato: { bairro: @candidato.bairro, cep: @candidato.cep, city_id: @candidato.city_id, complemento: @candidato.complemento, contato_cel: @candidato.contato_cel, contato_residencial: @candidato.contato_residencial, cpf: @candidato.cpf, data_nascimento: @candidato.data_nascimento, email_01: @candidato.email_01, email_02: @candidato.email_02, email_03: @candidato.email_03, endereco: @candidato.endereco, estado_civil: @candidato.estado_civil, filhos: @candidato.filhos, filhos_cacula: @candidato.filhos_cacula, filhos_qtd: @candidato.filhos_qtd, fumante: @candidato.fumante, idade: @candidato.idade, nacionalidade_id: @candidato.nacionalidade_id, nome: @candidato.nome, nome_mae: @candidato.nome_mae, numero: @candidato.numero, operadora_id: @candidato.operadora_id, pais: @candidato.pais, pne: @candidato.pne, pne_detalhe: @candidato.pne_detalhe, pne_tipo: @candidato.pne_tipo, png_grau: @candidato.png_grau, regiao: @candidato.regiao, rg: @candidato.rg, state_id: @candidato.state_id, uf: @candidato.uf }
    end

    assert_redirected_to candidato_path(assigns(:candidato))
  end

  test "should show candidato" do
    get :show, id: @candidato
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @candidato
    assert_response :success
  end

  test "should update candidato" do
    patch :update, id: @candidato, candidato: { bairro: @candidato.bairro, cep: @candidato.cep, city_id: @candidato.city_id, complemento: @candidato.complemento, contato_cel: @candidato.contato_cel, contato_residencial: @candidato.contato_residencial, cpf: @candidato.cpf, data_nascimento: @candidato.data_nascimento, email_01: @candidato.email_01, email_02: @candidato.email_02, email_03: @candidato.email_03, endereco: @candidato.endereco, estado_civil: @candidato.estado_civil, filhos: @candidato.filhos, filhos_cacula: @candidato.filhos_cacula, filhos_qtd: @candidato.filhos_qtd, fumante: @candidato.fumante, idade: @candidato.idade, nacionalidade_id: @candidato.nacionalidade_id, nome: @candidato.nome, nome_mae: @candidato.nome_mae, numero: @candidato.numero, operadora_id: @candidato.operadora_id, pais: @candidato.pais, pne: @candidato.pne, pne_detalhe: @candidato.pne_detalhe, pne_tipo: @candidato.pne_tipo, png_grau: @candidato.png_grau, regiao: @candidato.regiao, rg: @candidato.rg, state_id: @candidato.state_id, uf: @candidato.uf }
    assert_redirected_to candidato_path(assigns(:candidato))
  end

  test "should destroy candidato" do
    assert_difference('Candidato.count', -1) do
      delete :destroy, id: @candidato
    end

    assert_redirected_to candidatos_path
  end
end
