class RenamePublisherNameToPublisher < ActiveRecord::Migration[5.0]
  def change
  	rename_column :lib_10_br1s, :Publisher_Name, :Publisher
  end
end
