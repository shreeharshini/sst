class AddColumnToReport < ActiveRecord::Migration[5.0]
  def change
    add_column :reports, :report_type, :string
  end
end
