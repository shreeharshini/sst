class CreateUserAcounts < ActiveRecord::Migration[5.0]
  def change
    create_table :user_acounts do |t|
      t.integer :user_id
      t.integer :account_id
      t.integer :role_id
      t.string :updated_by

      t.timestamps
    end
  end
end
