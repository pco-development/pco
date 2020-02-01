class CreateSalePrices < ActiveRecord::Migration[6.0]
  def change
    create_table :sale_prices do |t|
      t.string :product_id
      t.string :date
      t.string :grade
      t.string :unit
      t.string :price
      t.integer :status

      t.timestamps
    end
  end
end
