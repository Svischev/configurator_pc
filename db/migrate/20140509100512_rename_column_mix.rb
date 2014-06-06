class RenameColumnMix < ActiveRecord::Migration
  def change
		rename_column :price_ranges, :mix, :min
  end
end
