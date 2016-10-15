class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

    t.string   "name"
    t.string   "last_name"
    t.string   "email"
    t.string   "username"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "gender"
    t.datetime "birthday"
    t.string   "university"
    t.string   "password"
    t.boolean  "admin"
    t.string   "avatar_image"
   

    end
  end
end
