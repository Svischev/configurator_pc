class CreateDescriptionOfComponents < ActiveRecord::Migration
  def change
    create_table :description_of_components do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
