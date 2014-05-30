class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.text :content
      t.string :source

      t.timestamps
    end
  end
end
