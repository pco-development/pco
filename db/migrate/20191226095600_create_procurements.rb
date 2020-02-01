class CreateProcurements < ActiveRecord::Migration[6.0]
  def change
    create_table :procurements do |t|
      t.string :market
      t.integer :product_id
      t.string :quantity
      t.string :unit_price

      t.timestamps
    end
  end
end
