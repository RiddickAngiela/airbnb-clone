class Picture < ApplicationRecord
     has_many :bookings
      has_many :likes, dependent: :destroy
end
