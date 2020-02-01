class CreateDrivers < ActiveRecord::Migration[6.0]
  def change
    create_table :drivers do |t|
      t.string :name
      t.string :mobile
      t.string :address
      t.string :city
      t.string :state
      t.string :pincode
      t.string :licence_number
      t.integer :status

      t.timestamps
    end
  end
end
