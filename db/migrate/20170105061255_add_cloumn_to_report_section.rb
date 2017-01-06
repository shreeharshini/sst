class AddCloumnToReportSection < ActiveRecord::Migration[5.0]
  def change
    add_column :report_sections, :year, :integer
  end
end
