class RenameJr1ToLib10Jr1 < ActiveRecord::Migration[5.0]
  def change
  	rename_table :jr1s, :lib_10_jr1s
  end
end
