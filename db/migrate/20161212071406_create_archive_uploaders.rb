class CreateArchiveUploaders < ActiveRecord::Migration[5.0]
  def change
    create_table :archive_uploaders do |t|

      t.timestamps
    end
  end
end
