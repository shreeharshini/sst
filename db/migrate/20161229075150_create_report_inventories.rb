class CreateReportInventories < ActiveRecord::Migration[5.0]
  def change
    create_table :report_inventories do |t|
      t.integer :account_id
      t.string :month
      t.string :status
      t.integer :year
      t.string :updated_by

      t.timestamps
    end
  end
end
