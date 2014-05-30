class CreateRecentTransactions < ActiveRecord::Migration
  def change
    create_table :recent_transactions do |t|
      t.string :image
      t.string :amount
      t.string :location
      t.string :property_type
      t.string :name

      t.timestamps
    end
  end
end
