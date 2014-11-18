class Candidato < ActiveRecord::Base
	has_many :candidato_formacaos, :dependent => :destroy
	has_many :candidato_idiomas, :dependent => :destroy
	has_many :candidato_experiencias, :dependent => :destroy
end
