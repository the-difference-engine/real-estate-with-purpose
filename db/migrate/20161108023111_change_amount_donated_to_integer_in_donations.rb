class ChangeAmountDonatedToIntegerInDonations < ActiveRecord::Migration[5.0]
  def change
    change_column :donations, :amount_donated, 'integer USING CAST(amount_donated AS integer)'
  end
end
