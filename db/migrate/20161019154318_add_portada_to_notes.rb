class AddPortadaToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :portada, :string
  end
end
