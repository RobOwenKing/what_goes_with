class Ingredient < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :colour, presence: true
end
