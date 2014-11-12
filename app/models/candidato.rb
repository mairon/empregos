class Candidato < ActiveRecord::Base
	has_many :candidato_formacaos
	has_many :candidato_idiomas

end
