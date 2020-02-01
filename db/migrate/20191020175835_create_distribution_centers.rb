class CreateDistributionCenters < ActiveRecord::Migration[6.0]
  def change
    create_table :distribution_centers do |t|
      t.string :name
      t.string :code
      t.string :address
      t.string :city
      t.string :state
      t.string :country
      t.integer :status
      t.string :longitude
      t.string :latitude

      t.timestamps
    end
  end
end
