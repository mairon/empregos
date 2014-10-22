json.array!(@documentos_empresa_perfils) do |documentos_empresa_perfil|
  json.extract! documentos_empresa_perfil, :id, :empresa_perfil_id, :documento_id
  json.url documentos_empresa_perfil_url(documentos_empresa_perfil, format: :json)
end
