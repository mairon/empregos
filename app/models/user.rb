class User < ActiveRecord::Base

 validates_uniqueness_of    :email,     :case_sensitive => false, :allow_blank => true, :if => :email_changed?
 validates_uniqueness_of    :cpfcnpj
 validates_presence_of :cpfcnpj

 validates_format_of    :email,    :with  => Devise.email_regexp, :allow_blank => true, :if => :email_changed?
 validates_presence_of    :password, :on=> :create
 validates_confirmation_of    :password, :on=> :create
 validates_length_of    :password, :within => Devise.password_length, :allow_blank => true
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
