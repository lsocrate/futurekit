class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :name
      t.string :short_desc
      t.text :long_desc
      t.string :category
      t.decimal :readiness
      t.string :photo

      t.timestamps
    end
  end
end
