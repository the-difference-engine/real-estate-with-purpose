class AddDefaultValueToHomeBudget < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :home_budget, :float
    add_column :users, :home_budget, :float, default: 0
  end
end
