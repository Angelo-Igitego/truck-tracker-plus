class Truck < ApplicationRecord
	has_many :containers, inverse_of: :truck
	validates :unique_number, presence: true, uniqueness: true
	validates :license_number, presence: true, uniqueness: true

	def name 
		self.unique_number	
	end
end
