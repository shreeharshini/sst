class RemoveColumnsFromLib10Br1 < ActiveRecord::Migration[5.0]
  def change
    remove_column :lib_10_br1s, :created_at, :string
    remove_column :lib_10_br1s, :updated_at, :stirng
  end
end
