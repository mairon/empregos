class Vaga < ActiveRecord::Base
	has_and_belongs_to_many :dias_semanas, :dependent => :destroy
	has_many :idiomas_vagas, :dependent => :destroy
	belongs_to :empresa
	accepts_nested_attributes_for :idiomas_vagas, :reject_if => lambda { |a| a[:idioma_id].blank? }, :allow_destroy => true
end
