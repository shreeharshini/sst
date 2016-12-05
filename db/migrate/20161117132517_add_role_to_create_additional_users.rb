class AddRoleToCreateAdditionalUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :create_additional_users, :role, :string
  end
end
