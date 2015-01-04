class CandidatoExperienciasCargo < ActiveRecord::Base
	belongs_to :candidato_experiencia
	belongs_to :cargo
	before_save :sava_candidato

	def sava_candidato
		self.candidato_id = candidato_experiencia.candidato_id
	end
end
