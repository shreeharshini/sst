class DropDataLibrary < ActiveRecord::Migration[5.0]
  def change
  	drop_table :data_libraries
  end
end
