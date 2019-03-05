class Restaurant < ApplicationRecord
  has_and_belongs_to_many :pizzas

  validates :name, :address, :openning_hours, presence: true
  validates :name, uniqueness: true
  validates :openning_hours, format: {
    with: /\A\d\d:\d\d\s-\s\d\d:\d\d\z/,
    message: "| Please, enter opening hours in correct format [example: 10:00 - 20:00]"
  }
end
