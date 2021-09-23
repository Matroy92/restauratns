class Restaurant < ApplicationRecord
  has_many :reviews
  validates :name, :address, :phone_number, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
end
