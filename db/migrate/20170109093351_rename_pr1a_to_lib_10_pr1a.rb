class RenamePr1aToLib10Pr1a < ActiveRecord::Migration[5.0]
  def change
  	rename_table :pr1s, :lib_10_pr1s
  end
end
