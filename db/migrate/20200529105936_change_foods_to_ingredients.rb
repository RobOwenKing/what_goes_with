class ChangeFoodsToIngredients < ActiveRecord::Migration[5.2]
  def change
    rename_table :foods, :ingredients
  end
end
