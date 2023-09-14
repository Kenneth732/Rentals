class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :room
  validates :booking_date, presence: true
end
