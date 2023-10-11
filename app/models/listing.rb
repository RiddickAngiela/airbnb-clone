class Listing < ApplicationRecord
  has_many :pictures, dependent: :destroy
  # ...
end
