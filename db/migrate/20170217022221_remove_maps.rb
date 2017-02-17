class RemoveMaps < ActiveRecord::Migration[5.0]
  def change
    drop_table :maps do |t|
      t.timestamps null: false
    end
  end
end
