class AddPlatformIdToReports < ActiveRecord::Migration[5.0]
  def change
    add_column :reports, :platform_id, :integer
  end
end
