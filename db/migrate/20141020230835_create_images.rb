class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :card_id
      t.string :image
      t.string :description

      t.timestamps
    end
  end
end
