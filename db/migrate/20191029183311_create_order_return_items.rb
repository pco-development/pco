class CreateOrderReturnItems < ActiveRecord::Migration[6.0]
  def change
    create_table :order_return_items do |t|
      t.integer :order_id
      t.integer :order_item_id
      t.string :return_type
      t.string :quantity
      t.string :reason

      t.timestamps
    end
  end
end
