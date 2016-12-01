class CreatePlats < ActiveRecord::Migration[5.0]
  def change
    create_table :plats do |t|
      t.string :name
      t.string :created_by
      t.string :updated_by
      t.string :platformname

      t.timestamps
    end
  end
end
