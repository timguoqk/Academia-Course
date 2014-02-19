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

ActiveRecord::Schema.define(version: 20140217063858) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "comments", force: true do |t|
    t.string   "author_id"
    t.text     "content",    null: false
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["course_id"], name: "index_comments_on_course_id", using: :btree

  create_table "courses", force: true do |t|
    t.string   "teacher"
    t.string   "photo"
    t.string   "title"
    t.float    "gpa"
    t.text     "intro_text"
    t.text     "gp_text"
    t.text     "difficulty_text"
    t.text     "features_text"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "subject"
    t.integer  "likes",           default: 0
    t.integer  "ranking"
    t.string   "room"
    t.string   "position"
    t.integer  "stu_quantity"
  end

  create_table "users", force: true do |t|
    t.integer  "grade"
    t.string   "type"
    t.hstore   "info"
    t.string   "name"
    t.string   "password"
    t.string   "salt"
    t.string   "email"
    t.integer  "school_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
