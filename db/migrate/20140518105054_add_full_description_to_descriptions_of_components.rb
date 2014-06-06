class AddFullDescriptionToDescriptionsOfComponents < ActiveRecord::Migration
  def change
    add_column :description_of_components, :full_description, :text
  end
end
