class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all
  end

  def show
    @ingredient = Ingredient.find_by(name: params[:name].capitalize)
    raise
  end

  def new
  end

  def create
  end
end
