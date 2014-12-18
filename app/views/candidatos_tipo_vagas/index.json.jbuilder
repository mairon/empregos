json.array!(@candidatos_tipo_vagas) do |candidatos_tipo_vaga|
  json.extract! candidatos_tipo_vaga, :id, :candidato_id, :tipo_vagas_id
  json.url candidatos_tipo_vaga_url(candidatos_tipo_vaga, format: :json)
end
