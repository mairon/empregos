class EmpresaPerfil < ActiveRecord::Base
	has_one :empresa
	has_and_belongs_to_many :convenios, :dependent => :destroy
	has_and_belongs_to_many :documentos, :dependent => :destroy
end
