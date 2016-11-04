class AddApiAddressToProperties < ActiveRecord::Migration[5.0]
  def change
    add_column :properties, :api_address, :string
  end
end

