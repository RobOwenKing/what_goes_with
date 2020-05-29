class Ingredient < ApplicationRecord
  validates :name, presence: true
  validates :colour, presence: true
end
