class CreateDeliveries < ActiveRecord::Migration[5.2]
  def change
    create_table :deliveries do |t|
      t.string :name
      t.string :address
      t.string :postal_code
      t.integer :customer_id

      t.timestamps
    end
  end
end
