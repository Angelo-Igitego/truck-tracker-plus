class Container < ApplicationRecord
  belongs_to :driver
  belongs_to :shipping_line
  belongs_to :truck

  belongs_to :port_of_loading, class_name: "Port", foreign_key: "port_of_loading_id"
end
