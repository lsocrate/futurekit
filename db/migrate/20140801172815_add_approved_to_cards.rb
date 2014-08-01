class AddApprovedToCards < ActiveRecord::Migration
  def change
    add_column :cards, :approved, :boolean
  end
end
