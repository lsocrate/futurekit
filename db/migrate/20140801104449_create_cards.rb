class CreateCards < ActiveRecord::Migration
  def up
    create_table :cards do |t|
      t.string :name
      t.string :short_desc
      t.text :long_desc
      t.string :category
      t.decimal :readiness
      t.string :photo

      t.timestamps
    end
      Card.create_translation_table! :name => :string, :short_desc => :string, :long_desc => :text

  end
  def down
    drop_table :cards
    Card.drop_translation_table!
  end
end