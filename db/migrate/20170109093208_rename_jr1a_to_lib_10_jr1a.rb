class RenameJr1aToLib10Jr1a < ActiveRecord::Migration[5.0]
  def change
  	rename_table :jr1as, :lib_10_jr1as
  end
end
