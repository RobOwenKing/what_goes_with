require 'test_helper'

class IngredientTest < ActiveSupport::TestCase
  test "ingredients must have a name" do
    ingredient = Ingredient.new(colour: '#FFFFFF')
    assert_not ingredient.save
  end
end
