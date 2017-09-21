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

ActiveRecord::Schema.define(version: 20170523195739) do

  create_table "cars", force: :cascade do |t|
    t.integer  "available_seats"
    t.string   "model"
    t.string   "brand"
    t.string   "color"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "drivers", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.integer  "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "passengers", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.integer  "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rides", force: :cascade do |t|
    t.string   "source"
    t.string   "destination"
    t.datetime "earliest_departure"
    t.datetime "latest_arrival"
    t.datetime "departure"
    t.datetime "arrival"
    t.decimal  "cost"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "shares", force: :cascade do |t|
    t.integer  "trip_id"
    t.integer  "ride_id"
    t.integer  "status"
    t.integer  "detour_duration"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["ride_id"], name: "index_shares_on_ride_id"
    t.index ["trip_id"], name: "index_shares_on_trip_id"
  end

  create_table "trips", force: :cascade do |t|
    t.string   "source"
    t.string   "destination"
    t.integer  "duration"
    t.datetime "earliest_departure"
    t.datetime "latest_arrival"
    t.datetime "departure"
    t.datetime "arrival"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

end
