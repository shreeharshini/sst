class DropTableAdditionalUsers < ActiveRecord::Migration[5.0]
  def change
  	drop_table :additional_users
  end
end
