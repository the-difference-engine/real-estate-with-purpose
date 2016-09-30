class CreateProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :properties do |t|
      t.integer :num_bedrooms
      t.integer :num_bathrooms
      t.float :list_price
      t.string :property_type
      t.string :image
      t.text :overview
      t.text :details
      t.text :misc_details

      t.timestamps
    end
  end
end
