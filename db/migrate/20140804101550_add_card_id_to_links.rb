class AddCardIdToLinks < ActiveRecord::Migration
  def change
    add_column :links, :card_id, :integer
    add_index :links, :card_id
  end
end
