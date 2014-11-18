json.array!(@cargos) do |cargo|
  json.extract! cargo, :id, :nome, :status
  json.url cargo_url(cargo, format: :json)
end
