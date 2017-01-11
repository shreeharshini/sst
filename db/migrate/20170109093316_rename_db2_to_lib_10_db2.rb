class RenameDb2ToLib10Db2 < ActiveRecord::Migration[5.0]
  def change
  	rename_table :db2s, :lib_10_db2s
  end
end
