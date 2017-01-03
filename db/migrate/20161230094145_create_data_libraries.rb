class CreateDataLibraries < ActiveRecord::Migration[5.0]
  def change
    create_table :data_libraries do |t|
      t.string :institution_code
      t.string :pub_code
      t.string :mps_collection_platform
      t.string :journal_title
      t.string :print_issn
      t.string :online_issn
      t.string :report_type
      t.string :processing_month
      t.string :processing_year
      t.string :ytd_integer
      t.string :isbn
      t.string :issn
      t.string :platform_name

      t.timestamps
    end
  end
end
