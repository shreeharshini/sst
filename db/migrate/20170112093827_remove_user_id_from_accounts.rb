class RemoveUserIdFromAccounts < ActiveRecord::Migration[5.0]
  def change
  	remove_column :accounts, :user_id
  end
end
