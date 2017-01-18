class RemoveColumnsFromLib10Jr2 < ActiveRecord::Migration[5.0]
  def change
  	remove_column :lib_10_jr2s, :created_at, :string
    remove_column :lib_10_jr2s, :updated_at, :stirng
  end
end
