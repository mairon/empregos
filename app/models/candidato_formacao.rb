class CandidatoFormacao < ActiveRecord::Base
	belongs_to :candidato
	belongs_to :formacao
	belongs_to :curso
end
