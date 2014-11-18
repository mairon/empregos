json.array!(@candidato_experiencias) do |candidato_experiencia|
  json.extract! candidato_experiencia, :id, :candidato_id, :empresa_nome, :cargo_id, :descricao_ativ, :state_id, :city_id
  json.url candidato_experiencia_url(candidato_experiencia, format: :json)
end
