class TipoVaga < ActiveRecord::Base
	has_and_belongs_to_many :candidatos
end
