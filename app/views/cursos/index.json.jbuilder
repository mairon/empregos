json.array!(@cursos) do |curso|
  json.extract! curso, :id, :nome, :status
  json.url curso_url(curso, format: :json)
end
