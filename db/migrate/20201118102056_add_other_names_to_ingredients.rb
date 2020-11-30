class AddOtherNamesToIngredients < ActiveRecord::Migration[5.2]
  def change
    add_column :ingredients, :aka, :string
    add_column :ingredients, :eg, :string

    add_index :ingredients, :aka
    add_index :ingredients, :eg
  end
end
