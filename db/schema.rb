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

ActiveRecord::Schema.define(version: 20150315181957) do

  create_table "brackets", force: true do |t|
    t.string   "name"
    t.integer  "final_game_score"
    t.integer  "tournament_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "brackets", ["tournament_id"], name: "index_brackets_on_tournament_id"
  add_index "brackets", ["user_id"], name: "index_brackets_on_user_id"

  create_table "rounds", force: true do |t|
    t.integer  "bracket_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rounds", ["bracket_id"], name: "index_rounds_on_bracket_id"

  create_table "seeds", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "name"
    t.integer  "espn_id"
    t.string   "espn_url"
    t.string   "espn_name"
    t.string   "cbs_abbr"
    t.string   "cbs_url"
    t.string   "cbs_name"
    t.integer  "cbs_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tournaments", force: true do |t|
    t.integer  "year"
    t.date     "selection_sunday"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "first"
    t.string   "last"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
