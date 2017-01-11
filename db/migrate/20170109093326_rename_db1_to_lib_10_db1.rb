class RenameDb1ToLib10Db1 < ActiveRecord::Migration[5.0]
  def change
  	rename_table :db1s, :lib_10_db1s
  end
end
