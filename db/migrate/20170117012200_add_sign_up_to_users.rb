class AddSignUpToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :signup, :string
  end
end
