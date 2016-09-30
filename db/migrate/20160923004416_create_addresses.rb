class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string :line_1
      t.string :line_2
      t.string :city, default: 'Chicago'
      t.string :state, default: 'IL'
      t.string :zip

      t.timestamps
    end
  end
end
