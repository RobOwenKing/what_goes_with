class AddRatingsToPairs < ActiveRecord::Migration[5.2]
  def change
    add_column :pairs, :classic, :integer, default: 0
    add_column :pairs, :different, :integer, default: 0
    add_column :pairs, :average, :integer, default: 0
    add_column :pairs, :bad, :integer, default: 0
    add_column :pairs, :overall, :string
  end
end
