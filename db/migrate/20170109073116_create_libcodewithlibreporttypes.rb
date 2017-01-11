class CreateLibcodewithlibreporttypes < ActiveRecord::Migration[5.0]
  def change
    create_table :libcodewithlibreporttypes do |t|
      t.integer :libcode
      t.string :Report_Type

      t.timestamps
    end
  end
end
