class RemoveTimestampsFromDataLibrary < ActiveRecord::Migration[5.0]
  def change
  	remove_column :data_libraries, :created_at, :string
    remove_column :data_libraries, :updated_at, :stirng
  end
end
