class RemoveColumnsFromLib10Jr3 < ActiveRecord::Migration[5.0]
  def change
  	remove_column :lib_10_jr3s, :created_at, :string
    remove_column :lib_10_jr3s, :updated_at, :stirng
  end
end
