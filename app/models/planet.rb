class Planet < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, presence: true
  validates :description, presence: true
  # validates :image_url, presence: true
  # validates :price, presence: true
  # validates :rating, numericality: { only_integer: true }
  # validates :rating, inclusion: { in: 0..5 }
end
