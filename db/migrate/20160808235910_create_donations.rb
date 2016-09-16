class CreateDonations < ActiveRecord::Migration[5.0]
  def change
    create_table :donations do |t|

      t.timestamps
    end
  end
end
