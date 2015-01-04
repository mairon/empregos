class Cargo < ActiveRecord::Base
	has_and_belongs_to_many :candidatos
	has_and_belongs_to_many :candidato_experiencias_cargos
end
