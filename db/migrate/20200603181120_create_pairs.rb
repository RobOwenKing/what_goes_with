class CreatePairs < ActiveRecord::Migration[5.2]
  def change
    create_table :pairs do |t|
      t.references :ingredient_1, foreign_key: { to_table: 'ingredients' }
      t.references :ingredient_2, foreign_key: { to_table: 'ingredients' }

      t.timestamps
    end
  end
end
