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

ActiveRecord::Schema.define(version: 20150115070001) do

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

  create_table "athletes_tournaments", id: false, force: :cascade do |t|
    t.integer "athlete_id"
    t.integer "tournament_id"
  end

  add_index "athletes_tournaments", ["athlete_id"], name: "index_athletes_tournaments_on_athlete_id"
  add_index "athletes_tournaments", ["tournament_id"], name: "index_athletes_tournaments_on_tournament_id"

  create_table "events", force: :cascade do |t|
    t.integer  "tournament_id"
    t.integer  "athlete_id"
    t.string   "type"
    t.float    "score"
    t.integer  "place"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "events", ["athlete_id"], name: "index_events_on_athlete_id"
  add_index "events", ["tournament_id"], name: "index_events_on_tournament_id"

  create_table "tournaments", force: :cascade do |t|
    t.string   "name"
    t.string   "venue"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.date     "event_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
