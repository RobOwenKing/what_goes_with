class Ingredient < ApplicationRecord
  has_many :pairs_1, class_name: "Pair", foreign_key: "ingredient_1_id"
  has_many :pairs_2, class_name: "Pair", foreign_key: "ingredient_2_id"

  def pairs
    self.pairs_1 + self.pairs_2
  end

  validates :name, presence: true, uniqueness: true
  validates :colour, presence: true
end
