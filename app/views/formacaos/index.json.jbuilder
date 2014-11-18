json.array!(@formacaos) do |formacao|
  json.extract! formacao, :id, :descricao
  json.url formacao_url(formacao, format: :json)
end
