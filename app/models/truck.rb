class Truck < ApplicationRecord
	has_many :containers

	def name 
		"#{model}, #{license_number}, #{unique_number}"
		
	end
end
