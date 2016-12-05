class DeleteColumnsFromCreateAdditionalUsers < ActiveRecord::Migration[5.0]
  def change
  	remove_column :create_additional_users, :ReprotUser, :string
  	remove_column :create_additional_users, :Admin, :string
  end
end
