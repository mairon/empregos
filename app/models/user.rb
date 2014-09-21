class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	attr_accessor :cpfcnpj

  has_one :empresa, :dependent => :destroy

  validates_presence_of :cpfcnpj
  validates_uniqueness_of :cpfcnpj

	def self.find_first_by_auth_conditions(warden_conditions)
		conditions = warden_conditions.dup
		if cpfcnpj = conditions.delete(:cpfcnpj)
			where(conditions).where(["lower(cpfcnpj) = :value", { :value => cpfcnpj.downcase }]).first
		else
			where(conditions).first
		end
	end
end
