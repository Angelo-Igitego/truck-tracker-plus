class Trip < ApplicationRecord
  belongs_to :truck
  belongs_to :shipment
end
