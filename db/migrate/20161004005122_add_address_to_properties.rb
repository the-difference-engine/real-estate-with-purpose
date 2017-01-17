class AddAddressToProperties < ActiveRecord::Migration[5.0]
  def change
    add_column :properties, :line_1, :string
    add_column :properties, :line_2, :string
    add_column :properties, :city, :string, default: "Chicago"
    add_column :properties, :state, :string, default: "IL" 
    add_column :properties, :zip, :string
  end
end
