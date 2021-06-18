class Port < ApplicationRecord
	has_many :shipments, foreign_key: "loading_port_id"
	has_many :shipments, foreign_key: "offloading_port_id"

	def description

		"#{name}, #{country}"
		
	end
end
