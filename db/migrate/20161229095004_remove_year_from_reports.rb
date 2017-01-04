class RemoveYearFromReports < ActiveRecord::Migration[5.0]
  def change
    remove_column :reports, :year, :integer
  end
end
