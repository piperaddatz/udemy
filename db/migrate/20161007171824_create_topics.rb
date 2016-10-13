class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :name
      t.integer :note_id
      t.integer :sort
      t.integer :price

      t.timestamps null: false
    end
  end
end
