json.array!(@nacionalidades) do |nacionalidade|
  json.extract! nacionalidade, :id, :nome
  json.url nacionalidade_url(nacionalidade, format: :json)
end
