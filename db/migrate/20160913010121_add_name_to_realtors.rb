class AddNameToRealtors < ActiveRecord::Migration[5.0]
  def change
    add_column :realtors, :name, :string
  end
end
