class CreateReportsMasters < ActiveRecord::Migration[5.0]
  def change
    create_table :reports_masters do |t|
      t.string :category
      t.string :name
      t.string :abbrev
      t.string :file_name
      t.string :description
      t.string :frequency
      t.string :format
      t.string :created_by
      t.string :updated_by

      t.timestamps
    end
  end
end
