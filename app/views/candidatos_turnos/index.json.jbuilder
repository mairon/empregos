json.array!(@candidatos_turnos) do |candidatos_turno|
  json.extract! candidatos_turno, :id, :candidato_id, :turno_id
  json.url candidatos_turno_url(candidatos_turno, format: :json)
end
