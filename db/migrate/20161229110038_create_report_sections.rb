class CreateReportSections < ActiveRecord::Migration[5.0]
  def change
    create_table :report_sections do |t|
      t.string :category
      t.string :section
      t.string :name
      t.string :description
      t.integer :order
      t.string :updated_by

      t.timestamps
    end
  end
end
