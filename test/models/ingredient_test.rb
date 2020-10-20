require 'test_helper'

class IngredientTest < ActiveSupport::TestCase
  test "Ingredients must have a name" do
    ingredient = Ingredient.new(colour: '#FFFFFF')
    assert_not ingredient.save
  end

  test "Ingredient names must be unique" do
    Ingredient.create(name: 'Aubergine', colour: '#FFFFFF')
    ingredient = Ingredient.new(name: 'Aubergine', colour: '#FFFFFF')
    assert_not ingredient.save
  end

  test "Ingredients must have a colour" do
    ingredient = Ingredient.new(name: 'Mint')
    assert_not ingredient.save
  end
end
