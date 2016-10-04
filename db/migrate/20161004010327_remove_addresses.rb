class RemoveAddresses < ActiveRecord::Migration[5.0]
  def change
    drop_table :addresses
  end
end
