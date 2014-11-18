class CandidatoExperiencia < ActiveRecord::Base
	belongs_to :candidato
	belongs_to :cargo
end
