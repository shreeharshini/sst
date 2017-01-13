class DropTableCreateAdditionalUsers < ActiveRecord::Migration[5.0]
  def change
  	drop_table :create_additional_users
  end
end
