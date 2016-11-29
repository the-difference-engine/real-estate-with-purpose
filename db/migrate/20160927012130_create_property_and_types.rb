class CreatePropertyAndTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :property_and_types do |t|
      t.integer :property_id
      t.integer :property_type_id

      t.timestamps
    end
  end
end
