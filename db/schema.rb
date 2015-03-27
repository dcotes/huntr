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

ActiveRecord::Schema.define(version: 20150326060419) do

  create_table "hints", force: true do |t|
    t.integer  "location_id", null: false
    t.string   "body",        null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "hunts", force: true do |t|
    t.integer  "user_id"
    t.string   "name",        null: false
    t.integer  "level",       null: false
    t.string   "city"
    t.integer  "target_time"
    t.text     "description", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "locations", force: true do |t|
    t.integer  "hunt_id",    null: false
    t.decimal  "lat",        null: false
    t.decimal  "lon",        null: false
    t.string   "clue",       null: false
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "play_sessions", force: true do |t|
    t.integer  "user_id"
    t.integer  "hunt_id"
    t.integer  "location_id"
    t.boolean  "complete",     default: false, null: false
    t.boolean  "active",       default: false, null: false
    t.integer  "current_hint",                 null: false
    t.integer  "used_hints",   default: 0,     null: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "users", force: true do |t|
    t.string   "email",                        null: false
    t.string   "password",                     null: false
    t.string   "nickname",   default: "email"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

end
