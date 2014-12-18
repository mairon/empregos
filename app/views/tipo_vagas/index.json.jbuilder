json.array!(@tipo_vagas) do |tipo_vaga|
  json.extract! tipo_vaga, :id, :nome
  json.url tipo_vaga_url(tipo_vaga, format: :json)
end
