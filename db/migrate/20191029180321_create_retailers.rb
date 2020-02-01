class CreateRetailers < ActiveRecord::Migration[6.0]
  def change
    create_table :retailers do |t|
      t.string :name
      t.string :shop_name
      t.string :mobile
      t.string :alternate_mobile
      t.string :email
      t.string :code
      t.string :address
      t.string :city
      t.string :state
      t.string :pincode
      t.string :latitude
      t.string :longitude
      t.integer :status

      t.timestamps
    end
  end
end
