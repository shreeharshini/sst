class DropAuditTests < ActiveRecord::Migration[5.0]
  def change
  	drop_table :audit_tests
  end
end
