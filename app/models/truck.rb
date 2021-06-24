class Truck < ApplicationRecord
	has_many :containers, inverse_of: :truck

	def name 
		self.unique_number	
	end
end
