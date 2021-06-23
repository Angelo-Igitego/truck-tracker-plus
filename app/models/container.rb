class Container < ApplicationRecord
  belongs_to :driver, class_name: "User", foreign_key: "driver_id"
  belongs_to :shipping_line
  belongs_to :truck

  belongs_to :port_of_loading, class_name: "Port", foreign_key: "port_of_loading_id"

  validates_presence_of :number, :shipper, :commodity
end
