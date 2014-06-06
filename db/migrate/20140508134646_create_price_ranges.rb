class CreatePriceRanges < ActiveRecord::Migration
  def change
    create_table :price_ranges do |t|
      t.string :name
      t.text :description
      t.integer :mix
      t.integer :max

      t.timestamps
    end
  end
end
