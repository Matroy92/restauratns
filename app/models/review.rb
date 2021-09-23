class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, :restaurant_id, presence: true
end
