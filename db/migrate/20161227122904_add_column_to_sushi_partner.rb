class AddColumnToSushiPartner < ActiveRecord::Migration[5.0]
  def change
    add_column :sushi_partners, :is_permitted, :integer

  end
end
