class RemoveColumnsFromLib10Pr1 < ActiveRecord::Migration[5.0]
  def change
    remove_column :lib_10_pr1s, :created_at, :string
    remove_column :lib_10_pr1s, :updated_at, :stirng
  end
end
