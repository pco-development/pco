class AddLandmarkToRetailer < ActiveRecord::Migration[6.0]
  def change
    add_column :retailers, :landmark, :string
  end
end
