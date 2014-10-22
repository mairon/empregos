json.array!(@admin_ramos) do |admin_ramo|
  json.extract! admin_ramo, :id, :nome, :status, :codigo
  json.url admin_ramo_url(admin_ramo, format: :json)
end
