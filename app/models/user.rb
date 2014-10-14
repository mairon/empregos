class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :empresa, :dependent => :destroy

  after_create :create_empresa_candidato

  def create_empresa_candidato
  	Empresa.create(user_id: self.id, cnpj: self.cpfcnpj, email_receb: self.email)
  end

end
