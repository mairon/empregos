class Idioma < ActiveRecord::Base
	validates :nome, :presence => true
	validates_uniqueness_of  :nome	
end
