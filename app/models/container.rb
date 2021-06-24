class Container < ApplicationRecord
  belongs_to :driver, class_name: "User", foreign_key: "driver_id"
  belongs_to :shipping_line, inverse_of: :containers
  belongs_to :truck, inverse_of: :containers
  belongs_to :customer, inverse_of: :containers

  belongs_to :port_of_loading, class_name: "Port", foreign_key: "port_of_loading_id"

  validates_presence_of :number, :shipper, :commodity

  def already_offloaded
    self.offloaded? ? "Yes" : "No"    
  end
end
