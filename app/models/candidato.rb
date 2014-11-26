class Candidato < ActiveRecord::Base
	has_many :candidato_formacaos, :dependent => :destroy
	has_many :candidato_idiomas, :dependent => :destroy
	has_many :candidato_experiencias, :dependent => :destroy

	 validates_uniqueness_of    :rg
	 validates_presence_of :rg, :nome, :sexo, :email_01, :cep, :endereco, :state_id, :city_id
	 validates_presence_of :filhos_qtd, :filhos_cacula, if: :filhos?



	 def filhos?
    self.filhos == true
  end

end
