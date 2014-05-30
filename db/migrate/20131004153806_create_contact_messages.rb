class CreateContactMessages < ActiveRecord::Migration
  def change
    create_table :contact_messages do |t|
      t.string :email
      t.text :content

      t.timestamps
    end
  end
end
