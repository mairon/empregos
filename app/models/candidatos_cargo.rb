class CandidatosCargo < ActiveRecord::Base
	belongs_to :cargo
	belongs_to :candidato
end
