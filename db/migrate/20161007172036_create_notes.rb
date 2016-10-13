class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :name
      t.boolean :is_pay
      t.integer :price
      t.string :teacher
      t.string :description
      t.boolean :is_video
      t.string :preview
      t.boolean :published

      t.timestamps null: false
    end
  end
end
