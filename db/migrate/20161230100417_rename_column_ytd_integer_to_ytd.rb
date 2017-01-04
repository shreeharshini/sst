class RenameColumnYtdIntegerToYtd < ActiveRecord::Migration[5.0]
  def change
  	rename_column :data_libraries, :ytd_integer, :ytd
  end
end
