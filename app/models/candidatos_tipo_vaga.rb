class CandidatosTipoVaga < ActiveRecord::Base
	belongs_to :candidato
	belongs_to :tipo_vaga
end
