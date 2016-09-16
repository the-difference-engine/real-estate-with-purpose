class AddUserableidToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :userable_id, :integer
  end
end
