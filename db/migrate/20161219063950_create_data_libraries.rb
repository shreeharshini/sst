class CreateDataLibraries < ActiveRecord::Migration[5.0]
  def change
    create_table :data_libraries do |t|
      t.string :institution_code
      t.string :pub_code
      t.string :journal_title
      t.string :print_issn
      t.string :online_issn
      t.string :report_type
      t.integer :processing_month
      t.integer :processing_year
      t.integer :ytd
      t.string :isbn
      t.string :issn
      t.string :platform_name

      t.timestamps
    end
  end
end
