class AddYearToReport < ActiveRecord::Migration[5.0]
  def change
    add_column :reports, :year, :integer
  end
end
