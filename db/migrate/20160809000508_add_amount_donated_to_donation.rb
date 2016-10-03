class AddAmountDonatedToDonation < ActiveRecord::Migration[5.0]
  def change
    add_column :donations, :amount_donated, :string
  end
end
