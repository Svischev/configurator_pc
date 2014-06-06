class AddRusNameToDescriptionOfComponents < ActiveRecord::Migration
  def change
    add_column :description_of_components, :rus_name, :string
  end
end
