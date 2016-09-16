class ChangeColumnAmountDonatedToFloatInDonations < ActiveRecord::Migration[5.0]
  def change
    remove_column :donations, :amount_donated, :string
    add_column :donations, :amount_donated, :float
  end
end
  