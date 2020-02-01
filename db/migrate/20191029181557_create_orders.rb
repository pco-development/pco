class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :retailer_id
      t.string :order_number
      t.string :date
      t.string :no_of_items
      t.string :no_of_crates
      t.string :order_amount
      t.string :adjustment_amount
      t.integer :status

      t.timestamps
    end
  end
end
