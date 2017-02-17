class RemoveLogoFromCharities < ActiveRecord::Migration[5.0]
  def change
    remove_column :charities, :logo, :string
  end
end
