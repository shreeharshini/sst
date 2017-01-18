class RemoveColumnsFromLib10Db1 < ActiveRecord::Migration[5.0]
  def change
  	remove_column :lib_10_db1s, :created_at, :string
    remove_column :lib_10_db1s, :updated_at, :stirng
  end
end
