class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.references :user, foreign_key: true
      t.references :pair, foreign_key: true
      t.string :rating
      t.string :comments

      t.timestamps
    end
  end
end
