class AddUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.boolean :admin, default: false
      t.float :home_budget, default: 0.0

      t.timestamps
    end
  end
end
