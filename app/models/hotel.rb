class Hotel < ApplicationRecord
    has_many :bookings
    validates :hotel_name, :capacity, :address, presence: true
end
