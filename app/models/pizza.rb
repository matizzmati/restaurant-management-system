class Pizza < ApplicationRecord
  has_and_belongs_to_many :restaurants

  validates :name, :price, :ingredients, presence: true
  validates :price, numericality: {only_float: true}

  scope :sort_by_price, -> {order(price: :asc)}
end
