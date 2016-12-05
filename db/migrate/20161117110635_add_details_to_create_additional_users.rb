class AddDetailsToCreateAdditionalUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :create_additional_users, :ReprotUser, :string
    add_column :create_additional_users, :Admin, :string
  end
end
