class Customer < ApplicationRecord
	has_many :containers, inverse_of: :customer

	def name 
		self.business_name   
	end
end
