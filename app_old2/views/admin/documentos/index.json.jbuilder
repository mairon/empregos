json.array!(@admin_documentos) do |admin_documento|
  json.extract! admin_documento, :id, :nome, :status
  json.url admin_documento_url(admin_documento, format: :json)
end
