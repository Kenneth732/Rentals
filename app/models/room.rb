class Room < ApplicationRecord
    validates :room_number, presence: true
    validates :price, presence: true
    has_many :bookings
end
