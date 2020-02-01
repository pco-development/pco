class AddColumnToPricelists < ActiveRecord::Migration[6.0]
  def change
    add_column :pricelists, :available_quantity, :string
  end
end
