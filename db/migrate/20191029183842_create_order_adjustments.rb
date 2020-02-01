class CreateOrderAdjustments < ActiveRecord::Migration[6.0]
  def change
    create_table :order_adjustments do |t|
      t.integer :order_id
      t.integer :order_item_id
      t.string :adjustment_type
      t.string :quantity
      t.string :reason

      t.timestamps
    end
  end
end
