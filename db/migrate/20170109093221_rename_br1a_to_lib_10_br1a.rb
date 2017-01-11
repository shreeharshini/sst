class RenameBr1aToLib10Br1a < ActiveRecord::Migration[5.0]
  def change
  	rename_table :br1s, :lib_10_br1s
  end
end
