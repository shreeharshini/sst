class AddLibraryCodeToAccounts < ActiveRecord::Migration[5.0]
  def change
    add_column :accounts, :library_code, :string
  end
end
