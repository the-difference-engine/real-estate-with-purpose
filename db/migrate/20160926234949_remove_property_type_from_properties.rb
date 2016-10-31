class RemovePropertyTypeFromProperties < ActiveRecord::Migration[5.0]
  def change
    remove_column :properties, :property_type, :string
  end
end
