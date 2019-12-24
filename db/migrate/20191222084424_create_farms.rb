class CreateFarms < ActiveRecord::Migration[6.0]
  def change
    create_table :farms do |t|
      t.string :name
      t.string :price
      t.string :image
      t.string :location
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
