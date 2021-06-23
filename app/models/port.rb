class Port < ApplicationRecord
	has_many :shipments, foreign_key: "loading_port_id"
	has_many :shipments, foreign_key: "offloading_port_id"
	has_many :port_of_loading_id, foreign_key: "loading_port_id"
	validates_presence_of :name, :country

	def description
		"#{name}, #{country}"
	end
	
end
