class AddCharityIdToDonations < ActiveRecord::Migration[5.0]
  def change
      add_column :donations, :charity_id, :integer
  end
end
