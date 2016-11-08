class RemoveCharityNameColumnFromDonations < ActiveRecord::Migration[5.0]
  def change
    remove_column :donations, :charity_name, :string
  end
end
