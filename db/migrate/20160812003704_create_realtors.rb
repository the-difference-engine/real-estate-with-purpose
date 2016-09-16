class CreateRealtors < ActiveRecord::Migration[5.0]
  def change
    create_table :realtors do |t|
      t.string :headshot
      t.text :bio
      t.text :faqs
      t.string :twitter_handle
      t.string :phone_number
      t.string :email

      t.timestamps
    end
  end
end
