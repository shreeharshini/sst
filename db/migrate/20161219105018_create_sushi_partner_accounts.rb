class CreateSushiPartnerAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :sushi_partner_accounts do |t|
      t.integer :account_id
      t.integer :user_id
      t.string :updated_by

      t.timestamps
    end
  end
end
