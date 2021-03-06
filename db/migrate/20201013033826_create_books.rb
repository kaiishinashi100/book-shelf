class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string  :title,        null: false
      t.integer :user_id,      null: false, foreign_key: true
      t.integer :publisher_id, null: false
      t.integer :genre_id,     null: false

      t.timestamps
    end
  end
end
