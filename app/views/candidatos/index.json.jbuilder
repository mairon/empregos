json.array!(@candidatos) do |candidato|
  json.extract! candidato, :id, :nome, :rg, :uf, :cpf, :data_nascimento, :idade, :nome_mae, :contato_cel, :operadora_id, :contato_residencial, :email_01, :email_02, :email_03, :cep, :endereco, :numero, :complemento, :bairro, :regiao, :state_id, :city_id, :pais, :nacionalidade_id, :fumante, :pne, :pne_tipo, :png_grau, :pne_detalhe, :estado_civil, :filhos, :filhos_qtd, :filhos_cacula
  json.url candidato_url(candidato, format: :json)
end
