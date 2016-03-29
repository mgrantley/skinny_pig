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

ActiveRecord::Schema.define(version: 20150615154612) do

  create_table "basic_stats", force: true do |t|
    t.integer  "qb_rating"
    t.integer  "pass_attempts"
    t.integer  "pass_yards"
    t.integer  "int_thrown"
    t.integer  "rush_attempts"
    t.integer  "rush_yards"
    t.integer  "fumbles"
    t.integer  "rec_targets"
    t.integer  "rec_yards"
    t.integer  "pass_drops"
    t.integer  "sacks"
    t.integer  "tackles"
    t.integer  "tackles_fl"
    t.integer  "forced_fumbles"
    t.integer  "fumble_rec"
    t.integer  "int_rec"
    t.integer  "pass_breakups"
    t.integer  "touchdowns"
    t.integer  "kor_attempts"
    t.integer  "kor_yards"
    t.integer  "pr_attempts"
    t.integer  "pr_yards"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "coaches", force: true do |t|
    t.string   "first_name",            null: false
    t.string   "last_name",             null: false
    t.string   "hometown",              null: false
    t.string   "highschool"
    t.string   "college"
    t.boolean  "former_college_player", null: false
    t.boolean  "former_pro_player",     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "combine_stats", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "games", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "periods", force: true do |t|
    t.datetime "date",             null: false
    t.integer  "advanced_stat_id"
    t.integer  "basic_stat_id"
    t.integer  "coach_id"
    t.integer  "combine_stat_id"
    t.integer  "nfl_week"
    t.integer  "player_id"
    t.integer  "profile_id"
    t.integer  "record_id"
    t.integer  "team_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", force: true do |t|
    t.string   "first_name", null: false
    t.string   "last_name",  null: false
    t.string   "hometown",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "plays", force: true do |t|
    t.integer  "coach_id"
    t.integer  "player_id"
    t.integer  "team_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profiles", force: true do |t|
    t.boolean  "player",       null: false
    t.boolean  "coach",        null: false
    t.integer  "height"
    t.integer  "weight"
    t.boolean  "injured"
    t.integer  "injured_part"
    t.boolean  "surgery"
    t.integer  "side"
    t.integer  "position"
    t.integer  "style"
    t.integer  "o_scheme"
    t.integer  "d_scheme"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "records", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "name",         null: false
    t.string   "college_name"
    t.string   "city",         null: false
    t.string   "state",        null: false
    t.string   "league",       null: false
    t.string   "division",     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
