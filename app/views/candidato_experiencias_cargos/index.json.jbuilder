json.array!(@candidato_experiencias_cargos) do |candidato_experiencias_cargo|
  json.extract! candidato_experiencias_cargo, :id, :cargo_id, :candidato_experiencia_id, :candidato_id
  json.url candidato_experiencias_cargo_url(candidato_experiencias_cargo, format: :json)
end
