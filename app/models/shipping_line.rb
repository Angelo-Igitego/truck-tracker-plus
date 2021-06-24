class ShippingLine < ApplicationRecord
	has_many :containers, inverse_of: :shipping_line
end
