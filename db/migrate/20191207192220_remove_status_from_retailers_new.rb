class RemoveStatusFromRetailersNew < ActiveRecord::Migration[6.0]
  def change
  	remove_column :retailers, :status
  	add_column :retailers, :status, :integer, :default => 0 
  end
end
