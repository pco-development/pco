class CreateOrderItems < ActiveRecord::Migration[6.0]
  def change
    create_table :order_items do |t|
      t.integer :order_id
      t.integer :product_id
      t.string :quantity
      t.integer :status

      t.timestamps
    end
  end
end
