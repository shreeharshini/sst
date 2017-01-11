class RenameJr2ToLib10Jr2 < ActiveRecord::Migration[5.0]
  def change
  	rename_table :jr2s, :lib_10_jr2s
  end
end
