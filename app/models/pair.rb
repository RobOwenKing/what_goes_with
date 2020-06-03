class Pair < ApplicationRecord
  belongs_to :ingredient_1, class_name: 'Ingredient'
  belongs_to :ingredient_2, class_name: 'Ingredient'
end
