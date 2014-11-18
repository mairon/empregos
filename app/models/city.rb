class City < ActiveRecord::Base
	belongs_to :state
  validates :name,
            :state_id,
            :presence => true
	validates_uniqueness_of :name
  validates :name, length: { in: 1..50 }
end
