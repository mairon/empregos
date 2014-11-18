json.array!(@documentos) do |documento|
  json.extract! documento, :id, :nome, :status
  json.url documento_url(documento, format: :json)
end
