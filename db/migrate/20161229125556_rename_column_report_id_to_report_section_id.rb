class RenameColumnReportIdToReportSectionId < ActiveRecord::Migration[5.0]
  def change
  	rename_column :generated_reports, :report_id, :report_section_id
  end
end
