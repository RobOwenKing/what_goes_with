class AddOtherNamesToIngredients < ActiveRecord::Migration[5.2]
  def change
    add_column :ingredients, :akas, :string
    add_column :ingredients, :egs, :string
  end
end
