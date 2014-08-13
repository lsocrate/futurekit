class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.string :password_digest
      t.integer :age
      t.string :location
      t.text :description
      t.string :remember_token
      t.boolean :admin, default: false

      t.timestamps
    end
    add_index :users, :email
    add_index :users, :remember_token
  end
end
