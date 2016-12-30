class AddCharityNameToDonation < ActiveRecord::Migration[5.0]
  def change
    add_column :donations, :charity_name, :string
  end
end
