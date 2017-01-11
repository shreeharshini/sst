class RenameJr3ToLib10Jr3 < ActiveRecord::Migration[5.0]
  def change
  	rename_table :jr3s, :lib_10_jr3s
  end
end
