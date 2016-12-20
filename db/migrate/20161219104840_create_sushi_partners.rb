class CreateSushiPartners < ActiveRecord::Migration[5.0]
  def change
    create_table :sushi_partners do |t|
      t.string :code
      t.string :name
      t.string :created_by
      t.string :updated_by

      t.timestamps
    end
  end
end
