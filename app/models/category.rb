class Category < ApplicationRecord
  has_many :motorcycles
  validates :name, presence: true, uniqueness: true
end
