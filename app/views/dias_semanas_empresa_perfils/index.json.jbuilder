json.array!(@dias_semanas_empresa_perfils) do |dias_semanas_empresa_perfil|
  json.extract! dias_semanas_empresa_perfil, :id, :empresa_perfil_id, :dias_semana_id
  json.url dias_semanas_empresa_perfil_url(dias_semanas_empresa_perfil, format: :json)
end
