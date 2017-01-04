class DropLibraryCodeMapping < ActiveRecord::Migration[5.0]
  def change
  	drop_table :library_code_mappings
  end
end
