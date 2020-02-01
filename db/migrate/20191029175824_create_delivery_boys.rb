class CreateDeliveryBoys < ActiveRecord::Migration[6.0]
  def change
    create_table :delivery_boys do |t|
      t.string :name
      t.string :mobile
      t.string :address
      t.string :city
      t.string :state
      t.string :pincode
      t.string :id_type
      t.string :id_number
      t.integer :status

      t.timestamps
    end
  end
end
