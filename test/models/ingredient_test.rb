require 'test_helper'

class IngredientTest < ActiveSupport::TestCase
  test "Ingredients must have a name" do
    ingredient = Ingredient.new(colour: '#FFFFFF')
    ingredient.valid?
    assert_not_empty ingredient.errors[:name]
  end

  test "Ingredient names must be unique" do
    Ingredient.create(name: 'Aubergine', colour: '#FFFFFF')
    ingredient = Ingredient.new(name: 'Aubergine', colour: '#FFFFFF')
    ingredient.valid?
    assert_not_empty ingredient.errors[:name]
  end

  test "Ingredients must have a colour" do
    ingredient = Ingredient.new(name: 'Mint')
    ingredient.valid?
    assert_not_empty ingredient.errors[:colour]
  end
end
