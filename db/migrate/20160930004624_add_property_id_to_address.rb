class AddPropertyIdToAddress < ActiveRecord::Migration[5.0]
  def change
    add_column :addresses, :property_id, :integer
  end
end