json.array!(@candidatos_cargos) do |candidatos_cargo|
  json.extract! candidatos_cargo, :id, :candidato_id, :cargo_id
  json.url candidatos_cargo_url(candidatos_cargo, format: :json)
end
