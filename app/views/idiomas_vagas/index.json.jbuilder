json.array!(@idiomas_vagas) do |idiomas_vaga|
  json.extract! idiomas_vaga, :id, :vaga_id, :idioma_id, :nivel
  json.url idiomas_vaga_url(idiomas_vaga, format: :json)
end
