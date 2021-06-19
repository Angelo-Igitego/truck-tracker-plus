class TripContainer < ApplicationRecord
  belongs_to :trip
  belongs_to :customer
end
