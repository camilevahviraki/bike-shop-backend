class Motorcycle < ApplicationRecord
  belongs_to :category
  has_many :reservations
  has_many :users, through :reservations

  validates :brand, :model, :year, :image, presence: true
  validates :booking_fee, presence: true, numericality: { greater_than: 0 }
end
