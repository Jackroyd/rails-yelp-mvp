class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, presence: { message: 'Restaurants must have a %{value}' }
  validates :category, inclusion: { in: %w(chinese italian japanese french belgian), message: 'category needs to be one of: chinese italian japanese french belgian' }
end
