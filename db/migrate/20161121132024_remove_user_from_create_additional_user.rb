class RemoveUserFromCreateAdditionalUser < ActiveRecord::Migration[5.0]
  def change
    remove_column :create_additional_users, :UserID, :string
    remove_column :create_additional_users, :Name, :string
    remove_column :create_additional_users, :EmailID, :string
  end
end
