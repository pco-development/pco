class CreatePricelists < ActiveRecord::Migration[6.0]
  def change
    create_table :pricelists do |t|
      t.integer :product_id
      t.string :date
      t.string :availabe_quantity
      t.string :sale_price
      t.integer :status

      t.timestamps
    end
  end
end
