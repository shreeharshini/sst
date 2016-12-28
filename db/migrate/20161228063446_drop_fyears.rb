class DropFyears < ActiveRecord::Migration[5.0]
  def change
  	drop_table :fyears
  end
end
