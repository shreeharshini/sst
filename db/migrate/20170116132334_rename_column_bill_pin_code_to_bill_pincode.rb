class RenameColumnBillPinCodeToBillPincode < ActiveRecord::Migration[5.0]
  def change
  	rename_column :account_infos, :bill_pin_code, :bill_pincode
  end
end
