class CandidatoExperiencia < ActiveRecord::Base
	belongs_to :candidato
	belongs_to :tipo_vaga
	has_and_belongs_to_many :cargos
	has_many :candidato_experiencias_cargos, :dependent => :destroy
end
