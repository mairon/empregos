json.array!(@candidato_formacaos) do |candidato_formacao|
  json.extract! candidato_formacao, :id, :formacao_id, :curso_id, :status, :inicio_mes, :inicio_ano, :final_mes, :final_ano, :instituicao, :pais_id, :estado_id
  json.url candidato_formacao_url(candidato_formacao, format: :json)
end
