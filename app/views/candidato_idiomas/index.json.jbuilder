json.array!(@candidato_idiomas) do |candidato_idioma|
  json.extract! candidato_idioma, :id, :idioma_id, :estado
  json.url candidato_idioma_url(candidato_idioma, format: :json)
end
