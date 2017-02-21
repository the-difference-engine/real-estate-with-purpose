class AddAttachmentLogoToCharities < ActiveRecord::Migration
  def self.up
    change_table :charities do |t|
      t.attachment :logo
    end
  end

  def self.down
    remove_attachment :charities, :logo
  end
end
