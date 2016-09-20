class CreateTestimonials < ActiveRecord::Migration[5.0]
  def change
    create_table :testimonials do |t|
      t.string :quote
      t.string :customer

      t.timestamps
    end
  end
end
