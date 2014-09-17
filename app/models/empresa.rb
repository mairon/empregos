class Empresa < ActiveRecord::Base
	has_one :empresa_perfil, :dependent => :destroy
	validates :cnpj, :razao_social, :ramo_id, :nome_fantasia,:unidade, :cep, :endereco, :state_id, :city_id, :fone01, :responsavel, :fone_resp, :endero_entrevista, :entrev_cep, :entrev_endereco, :entrev_state_id, :entrev_city_id, :responsavel, :presence => true, on: :update
	validates_uniqueness_of :cnpj, :razao_social, on: :update
	validates_format_of :email_receb, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :update

  after_create :cria_perfil

  def cria_perfil
  	EmpresaPerfil.create(empresa_id: self.id)
  end
end
