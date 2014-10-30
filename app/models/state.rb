	class State < ActiveRecord::Base
	has_many :cities, dependent: :restrict_with_error
  validates :acronym,
          :name,
          :presence => true
	validates_uniqueness_of :name
  validates_length_of :acronym, is: 2
  validates_length_of :name, in: 1..50
end
