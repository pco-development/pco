class DropColumnAvailabeQuantityFromPricelists < ActiveRecord::Migration[6.0]
  def change
  	remove_column :pricelists, :availabe_quantity
  end
end
