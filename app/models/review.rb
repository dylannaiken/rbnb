class Review < ApplicationRecord
  belongs_to :user
  belongs_to :zombie
end
