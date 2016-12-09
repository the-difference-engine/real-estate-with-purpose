class ChangeNumBathroomToString < ActiveRecord::Migration[5.0]
  def change
    change_column :properties, :num_bathrooms, :string
  end
end
