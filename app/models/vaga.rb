class Vaga < ActiveRecord::Base
	has_and_belongs_to_many :dias_semanas, :dependent => :destroy
end
