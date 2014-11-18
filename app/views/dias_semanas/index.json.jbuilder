json.array!(@dias_semanas) do |dias_semana|
  json.extract! dias_semana, :id, :nome
  json.url dias_semana_url(dias_semana, format: :json)
end
