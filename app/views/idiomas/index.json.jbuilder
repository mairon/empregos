json.array!(@idiomas) do |idioma|
  json.extract! idioma, :id, :nome, :status
  json.url idioma_url(idioma, format: :json)
end
