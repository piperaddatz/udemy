class CreateSubtopics < ActiveRecord::Migration
  def change
    create_table :subtopics do |t|
      t.string :name
      t.integer :topic_id
      t.integer :sort
      t.boolean :is_demo

      t.timestamps null: false
    end
  end
end
