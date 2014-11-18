json.array!(@dias_semanas_vagas) do |dias_semanas_vaga|
  json.extract! dias_semanas_vaga, :id, :vaga_id, :nome
  json.url dias_semanas_vaga_url(dias_semanas_vaga, format: :json)
end
