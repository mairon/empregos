json.array!(@convenios_empresa_perfils) do |convenios_empresa_perfil|
  json.extract! convenios_empresa_perfil, :id, :empresa_perfil_id, :convenio_id
  json.url convenios_empresa_perfil_url(convenios_empresa_perfil, format: :json)
end
