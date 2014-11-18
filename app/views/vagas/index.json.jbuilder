json.array!(@vagas) do |vaga|
  json.extract! vaga, :id, :efetivo_carteira, :temporario, :extra, :trainer, :free_lancer, :autonomo, :representante, :comerical, :comercial_tipo, :periodo, :empresa_id, :cargo_id, :numero_vagas, :sexo, :pne, :estado_civil, :outros_detalhes_candito, :escolaridade, :area_tecnologo, :area_superior, :status_escolaridade, :cursando_periodo, :experiencia, :conhecimentos_desejaveis
  json.url vaga_url(vaga, format: :json)
end
