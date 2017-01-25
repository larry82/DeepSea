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

ActiveRecord::Schema.define(version: 20170125174821) do

  create_table "characters", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.integer  "atk"
    t.integer  "def"
    t.integer  "hp"
    t.decimal  "max_depth"
    t.decimal  "speed"
    t.integer  "capture_ability"
    t.decimal  "current_depth"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "characters", ["user_id"], name: "index_characters_on_user_id"

  create_table "incidents", force: :cascade do |t|
    t.string   "category"
    t.string   "info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "item_effects", force: :cascade do |t|
    t.string   "category"
    t.string   "name"
    t.integer  "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "category"
    t.string   "info"
    t.string   "name"
    t.integer  "price"
    t.integer  "weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "livingbeing_items", force: :cascade do |t|
    t.integer  "livingbeing_id"
    t.integer  "item_id"
    t.integer  "drop_probability"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "livingbeing_items", ["item_id"], name: "index_livingbeing_items_on_item_id"
  add_index "livingbeing_items", ["livingbeing_id"], name: "index_livingbeing_items_on_livingbeing_id"

  create_table "livingbeings", force: :cascade do |t|
    t.string   "category"
    t.string   "name"
    t.string   "info"
    t.integer  "atk"
    t.integer  "hp"
    t.integer  "def"
    t.integer  "captured_probability"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "map_incidents", force: :cascade do |t|
    t.integer  "map_id"
    t.integer  "incident_id"
    t.integer  "position"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "map_incidents", ["incident_id"], name: "index_map_incidents_on_incident_id"
  add_index "map_incidents", ["map_id"], name: "index_map_incidents_on_map_id"

  create_table "maps", force: :cascade do |t|
    t.integer  "character_id"
    t.string   "category"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "maps", ["character_id"], name: "index_maps_on_character_id"

  create_table "storages", force: :cascade do |t|
    t.integer  "item_id"
    t.integer  "character_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "storages", ["character_id"], name: "index_storages_on_character_id"
  add_index "storages", ["item_id"], name: "index_storages_on_item_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
