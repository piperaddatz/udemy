# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161017152805) do

  create_table "answers", force: :cascade do |t|
    t.string   "content"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "question_id"
  end

  create_table "notes", force: :cascade do |t|
    t.string   "name"
    t.boolean  "is_pay"
    t.integer  "price"
    t.string   "teacher"
    t.string   "description"
    t.boolean  "is_video"
    t.string   "preview"
    t.boolean  "published"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string   "content"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "subtopic_id"
  end

  create_table "subtopics", force: :cascade do |t|
    t.string   "name"
    t.integer  "topic_id"
    t.integer  "sort"
    t.boolean  "is_demo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "topics", force: :cascade do |t|
    t.string   "name"
    t.integer  "note_id"
    t.integer  "sort"
    t.integer  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "last_name"
    t.string   "email"
    t.string   "username"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "gender"
    t.datetime "birthday"
    t.string   "university"
    t.boolean  "admin"
    t.string   "avatar_image"
    t.string   "password_digest"
    t.string   "avatar"
  end

end
