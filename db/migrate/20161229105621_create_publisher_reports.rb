class CreatePublisherReports < ActiveRecord::Migration[5.0]
  def change
    create_table :publisher_reports do |t|
      t.integer :report_id
      t.string :category
      t.integer :sort_order
      t.date :start_date
      t.date :end_date
      t.string :updated_by
      t.string :account_type

      t.timestamps
    end
  end
end
