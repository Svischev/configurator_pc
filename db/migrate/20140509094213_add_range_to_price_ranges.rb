class AddRangeToPriceRanges < ActiveRecord::Migration
  def change
    add_column :price_ranges, :range, :string
  end
end
