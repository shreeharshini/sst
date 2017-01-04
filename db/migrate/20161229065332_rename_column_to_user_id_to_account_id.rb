class RenameColumnToUserIdToAccountId < ActiveRecord::Migration[5.0]
  def change
  	rename_column :generated_reports, :user_id, :account_id
  end
end
