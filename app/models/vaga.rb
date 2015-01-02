class Vaga < ActiveRecord::Base
	has_and_belongs_to_many :dias_semanas, :dependent => :destroy
	has_many :idiomas_vagas, :dependent => :destroy
	belongs_to :empresa
	validates_presence_of :tipo_vaga_id, :turno_id, :numero_vagas, :cargo_id, :empresa_id
	validates :numero_vagas, numericality:  { :greater_than => 0 }
	accepts_nested_attributes_for :idiomas_vagas, :reject_if => lambda { |a| a[:idioma_id].blank? }, :allow_destroy => true

end
