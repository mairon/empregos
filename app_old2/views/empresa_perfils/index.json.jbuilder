json.array!(@empresa_perfils) do |empresa_perfil|
  json.extract! empresa_perfil, :id, :empresa_id, :trab_sabado, :trab_domingo_feriados, :trans_vale_transporte, :trans_ajuda, :trans_combinar, :ali_vale_refeicao, :ali_refeitorio_proprio, :ali_ajuda, :ali_combinar, :trans_vale_valor, :trans_ajuda_valor, :ali_vale_valor, :ali_ajuda_valor
  json.url empresa_perfil_url(empresa_perfil, format: :json)
end
