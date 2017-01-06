class AddCloumnToGeneratedReports < ActiveRecord::Migration[5.0]
  def change
    add_column :generated_reports, :format, :string
  end
end
