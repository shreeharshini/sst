class DropTableCreateAdditionalUser < ActiveRecord::Migration[5.0]
  def change
  	drop_table :create_addtional_users
  end
end
