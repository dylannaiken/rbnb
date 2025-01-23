class Zombie < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :users, through: :bookings
  has_one_attached :photo

  # Ajoutez d'autres associations ou validations si nécessaire
end
