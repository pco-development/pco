class ChangeDcStatusToBool < ActiveRecord::Migration[6.0]
  def change
  	change_column :distribution_centers, :status, :boolean
  end
end
