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

ActiveRecord::Schema.define(version: 20150216164501) do

  create_table "athletes", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "age_level"
    t.integer  "class_level"
    t.date     "birth_date"
    t.date     "start_date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "athletes_events_meets", force: :cascade do |t|
    t.integer  "athlete_id"
    t.integer  "event_id"
    t.integer  "meet_id"
    t.decimal  "score",      precision: 8, scale: 1, default: 0.0, null: false
    t.integer  "place"
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
  end

  add_index "athletes_events_meets", ["athlete_id"], name: "index_athletes_events_meets_on_athlete_id"
  add_index "athletes_events_meets", ["event_id"], name: "index_athletes_events_meets_on_event_id"
  add_index "athletes_events_meets", ["meet_id"], name: "index_athletes_events_meets_on_meet_id"

  create_table "athletes_meets", force: :cascade do |t|
    t.integer  "athlete_id"
    t.integer  "meet_id"
    t.integer  "place"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "athletes_meets", ["athlete_id"], name: "index_athletes_meets_on_athlete_id"
  add_index "athletes_meets", ["meet_id"], name: "index_athletes_meets_on_meet_id"

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.decimal  "start_value", precision: 8, scale: 1
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "meets", force: :cascade do |t|
    t.string   "name"
    t.string   "venue"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.date     "meet_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
