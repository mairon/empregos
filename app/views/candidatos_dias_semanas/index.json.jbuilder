json.array!(@candidatos_dias_semanas) do |candidatos_dias_semana|
  json.extract! candidatos_dias_semana, :id, :candidato_id, :dias_semana_id
  json.url candidatos_dias_semana_url(candidatos_dias_semana, format: :json)
end
