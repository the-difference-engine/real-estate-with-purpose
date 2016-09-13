class CreateCharities < ActiveRecord::Migration[5.0]
  def change
    create_table :charities do |t|
      t.string :name
      t.string :logo
      t.string :description

      t.timestamps
    end
  end
end
