class RemoveCharityNameColumnFromDonations < ActiveRecord::Migration[5.0]
  def change
    remove_column :donations, :charity_namea, :string
  end
end
