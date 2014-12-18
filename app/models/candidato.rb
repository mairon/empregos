class Candidato < ActiveRecord::Base
	has_many :candidato_formacaos, :dependent => :destroy
	has_many :candidato_idiomas, :dependent => :destroy
	has_many :candidato_experiencias, :dependent => :destroy
	has_many :candidatos_dias_semanas, :dependent => :destroy
	has_many :candidatos_cargos
	has_and_belongs_to_many :dias_semanas
	has_and_belongs_to_many :tipo_vagas
	has_and_belongs_to_many :cargos
	validates_uniqueness_of    :rg
	validates_presence_of :rg, :nome, :sexo, :email_01, :cep, :endereco, :state_id, :city_id
	validates_presence_of :filhos_qtd, :filhos_cacula, if: :filhos?



 def filhos?
    self.filhos == true
  end

end
