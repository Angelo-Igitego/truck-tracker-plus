class Truck < ApplicationRecord
	has_many :containers

	def name 
		self.unique_number	
	end
end
