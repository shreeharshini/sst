class CreateCreateAdditionalUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :create_additional_users do |t|
      t.string :UserID
      t.string :Name
      t.string :EmailID

      t.timestamps
    end
  end
end
