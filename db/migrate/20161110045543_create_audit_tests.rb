class CreateAuditTests < ActiveRecord::Migration[5.0]
  def change
    create_table :audit_tests do |t|

      t.timestamps
    end
  end
end
