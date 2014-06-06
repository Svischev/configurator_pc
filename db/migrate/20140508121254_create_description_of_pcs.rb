class CreateDescriptionOfPcs < ActiveRecord::Migration
  def change
    create_table :description_of_pcs do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
