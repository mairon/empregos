json.array!(@convenios) do |convenio|
  json.extract! convenio, :id, :nome, :status
  json.url convenio_url(convenio, format: :json)
end
