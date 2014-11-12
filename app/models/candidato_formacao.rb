class CandidatoFormacao < ActiveRecord::Base
	belongs_to :candidato
	belongs_to :formacao
end
