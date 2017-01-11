class RenameBr2ToLib10Br2 < ActiveRecord::Migration[5.0]
  def change
  	rename_table :br2s, :lib_10_br2s
  end
end
