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

ActiveRecord::Schema.define(version: 20140420031939) do

  create_table "kaisekis", force: true do |t|
    t.string   "kaiseki_title"
    t.text     "kaiseki_kiji"
    t.integer  "slot_name_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "kaisekis", ["slot_name_id"], name: "index_kaisekis_on_slot_name_id"

  create_table "kijis", force: true do |t|
    t.integer  "slot_name_id"
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "kijis", ["slot_name_id"], name: "index_kijis_on_slot_name_id"

  create_table "slot_names", force: true do |t|
    t.string   "name"
    t.integer  "img"
    t.date     "dounyuu"
    t.text     "setumei"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks", force: true do |t|
    t.string   "title"
    t.integer  "slot_name_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tasks", ["slot_name_id"], name: "index_tasks_on_slot_name_id"

end
