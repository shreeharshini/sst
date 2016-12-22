class RemoveSectionFromReport < ActiveRecord::Migration[5.0]
  def change
    remove_column :reports, :section, :string
  end
end
