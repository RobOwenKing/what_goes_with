require 'test_helper'

class IngredientTest < ActiveSupport::TestCase
  test "ingredients must have a name" do
    ingredient = Ingredient.new(colour: '#FFFFFF')
    ingredient.valid?
    assert_not ingredient.errors[:name].empty?
  end

  test "ingredient names must be unique" do
    ingredient = Ingredient.new(name: 'Aubergine', colour: '#000000')
    ingredient.valid?
    assert_not ingredient.errors[:name].empty?
  end

  test "ingredients must have a colour" do
    ingredient = Ingredient.new(name: 'Mint')
    ingredient.valid?
    assert_not ingredient.errors[:colour].empty?
  end
end
