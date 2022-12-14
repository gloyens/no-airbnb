class Planet < ApplicationRecord

  belongs_to :user
  has_one_attached :photo
  has_many :bookings, dependent: :destroy
  validates :name, presence: true
  validates :description, presence: true
  # validates :image_url, presence: true
  # validates :price, presence: true
  # validates :rating, numericality: { only_integer: true }
  # validates :rating, inclusion: { in: 0..5 }
  include PgSearch::Model
  pg_search_scope :search_by_name_and_description,
  against: [ :name, :description ],
  using: {
    tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }
end
