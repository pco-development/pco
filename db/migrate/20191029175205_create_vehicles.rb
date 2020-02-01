class CreateVehicles < ActiveRecord::Migration[6.0]
  def change
    create_table :vehicles do |t|
      t.string :reg_number
      t.string :vehicle_model
      t.string :owner_name
      t.string :mobile
      t.string :address
      t.string :city
      t.string :state
      t.string :pincode
      t.integer :status

      t.timestamps
    end
  end
end
