class Booking < ApplicationRecord
  belongs_to :appartment
  belongs_to :user
end
