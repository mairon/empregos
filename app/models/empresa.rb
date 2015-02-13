class Empresa < ActiveRecord::Base
	has_one :empresa_perfil, dependent: :destroy
	has_many :vagas, dependent: :destroy
	belongs_to :city
	belongs_to :state
	validates  	:ramo_id, :nome_fantasia,
	          :unidade, :endereco, :state_id, :city_id,
	          :fone01, :responsavel, :endero_entrevista,
	          :entrev_endereco, :entrev_state_id, :entrev_city_id, presence: true

	validates_uniqueness_of :razao_social
	validates_format_of :email_receb, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

  geocoded_by :endereco
  geocoded_by :full_address

  after_create :create_perfil
  after_validation :geocode

  def create_perfil
  	EmpresaPerfil.create(empresa_id: self.id)
  end

  def full_address
  	unless self.endereco.blank?
	    "#{endereco}, #{cep}, #{city.name}, #{state.name}"
	end
  end

end
