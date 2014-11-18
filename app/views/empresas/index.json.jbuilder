json.array!(@empresas) do |empresa|
  json.extract! empresa, :id, :cnpj, :ramo_id, :razao_social, :nome_fantasia, :cep, :endereco, :complemento, :regiao, :state_id, :city_id, :referencia, :fone01, :ramal01, :fone02, :ramal02, :fone03, :ramal03, :responsavel, :fone_resp, :email_receb, :site, :unidade, :endero_entrevista, :entrev_cep, :entrev_endereco, :entrev_complemento, :entrev_regiao, :entrev_state_id, :entrev_city_id, :entrev_referencia, :entrev_fone_resp, :entev_ramal_resp, :ramal_resp, :entrev_email
  json.url empresa_url(empresa, format: :json)
end
