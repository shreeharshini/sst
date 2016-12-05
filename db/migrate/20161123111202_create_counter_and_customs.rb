class CreateCounterAndCustoms < ActiveRecord::Migration[5.0]
  def change
    create_table :counter_and_customs do |t|
      t.string :name
      t.integer :year
      t.string :description
      t.string :report_type

      t.timestamps
    end
  end
end
