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

ActiveRecord::Schema.define(version: 20160110202223) do

  create_table "data", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "csv_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "data", ["user_id"], name: "index_data_on_user_id"

  create_table "posts", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "image_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "seats"
    t.datetime "deadline"
    t.string   "place"
    t.string   "notes"
    t.string   "to"
    t.string   "from"
    t.date     "departure_date"
  end

  add_index "posts", ["user_id"], name: "index_posts_on_user_id"

  create_table "tasks", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.boolean  "complete"
    t.datetime "deadline"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "tasks", ["user_id"], name: "index_tasks_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "Happy"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.date     "departure_date"
  end

end
