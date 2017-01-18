class RemoveColumnsFromLib10Jr1a < ActiveRecord::Migration[5.0]
  def change
  	remove_column :lib_10_jr1as, :created_at, :string
    remove_column :lib_10_jr1as, :updated_at, :stirng
  end
end
