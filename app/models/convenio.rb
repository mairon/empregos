class Convenio < ActiveRecord::Base
	validates :nome, :presence => true
	validates_uniqueness_of :nome
	has_and_belongs_to_many :empresa_perfils

end
