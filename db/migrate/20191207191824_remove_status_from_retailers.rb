class RemoveStatusFromRetailers < ActiveRecord::Migration[6.0]
  def change
  	remove_column :retailers, :status
  	add_column :retailers, :status, :boolean
  end
end
