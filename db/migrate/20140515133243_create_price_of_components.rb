class CreatePriceOfComponents < ActiveRecord::Migration
  def change
    create_table 	:price_of_components do |t|
      t.integer 	:price_range_id
      t.float 		:price
      t.string 		:component
      t.string 		:full_name

      t.timestamps
    end
  end
end
