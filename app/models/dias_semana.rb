class DiasSemana < ActiveRecord::Base
	has_and_belongs_to_many :vagas
	has_and_belongs_to_many :empresa_perfils
	has_and_belongs_to_many :candidatos

end
