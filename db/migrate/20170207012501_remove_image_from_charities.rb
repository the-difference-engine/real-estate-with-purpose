class RemoveImageFromCharities < ActiveRecord::Migration[5.0]
  def change
    remove_column :charities, :image_file_name, :string
    remove_column :charities, :image_content_type, :string
    remove_column :charities, :image_file_size, :integer
    remove_column :charities, :image_updated_at, :datetime
  end
end
