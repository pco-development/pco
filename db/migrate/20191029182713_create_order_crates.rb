class CreateOrderCrates < ActiveRecord::Migration[6.0]
  def change
    create_table :order_crates do |t|
      t.integer :order_id
      t.integer :order_item_id
      t.string :crate_number
      t.string :return_status

      t.timestamps
    end
  end
end
