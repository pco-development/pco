class ChangeDcStatusToBoolSetDefaultValue0 < ActiveRecord::Migration[6.0]
  def change
  	change_column :distribution_centers, :status, :boolean, :default => 0
  end
end
