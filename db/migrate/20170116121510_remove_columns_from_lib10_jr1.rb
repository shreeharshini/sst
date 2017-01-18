class RemoveColumnsFromLib10Jr1 < ActiveRecord::Migration[5.0]
  def change
  	remove_column :lib_10_jr1s, :created_at, :string
    remove_column :lib_10_jr1s, :updated_at, :stirng
  end
end
