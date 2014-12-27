class CandidatoExperiencia < ActiveRecord::Base
	belongs_to :candidato
	belongs_to :cargo
	belongs_to :tipo_vaga
end
