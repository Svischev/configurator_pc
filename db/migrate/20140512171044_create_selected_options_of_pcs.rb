class CreateSelectedOptionsOfPcs < ActiveRecord::Migration
  def change
    create_table :selected_options_of_pcs do |t|
      t.integer :user_id
      t.integer :description_of_pc_id
      t.integer :price_range_id

      t.timestamps
    end
  end
end
