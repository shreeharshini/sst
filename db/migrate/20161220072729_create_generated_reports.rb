class CreateGeneratedReports < ActiveRecord::Migration[5.0]
  def change
    create_table :generated_reports do |t|
      t.integer :user_id
      t.integer :report_id
      t.string :status
      t.integer :year
      t.integer :is_generated

      t.timestamps
    end
  end
end
