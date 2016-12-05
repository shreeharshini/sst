class RemoveColumnUseridFromAccount < ActiveRecord::Migration[5.0]
  def change
    remove_column :accounts, :user_id, :string
    remove_column :accounts, :, :integer
  end
end
