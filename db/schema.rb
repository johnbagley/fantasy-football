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

ActiveRecord::Schema.define(version: 20140715194851) do

  create_table "players", force: true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "position"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "team_id"
  end

  add_index "players", ["user_id"], name: "index_players_on_user_id"

  create_table "statistics", force: true do |t|
    t.integer  "player_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "interceptions"
    t.integer  "rank"
    t.string   "name"
    t.integer  "completions",     default: 0
    t.integer  "passing_yards",   default: 0
    t.integer  "passing_tds",     default: 0
    t.integer  "rushes",          default: 0
    t.integer  "rushing_yards",   default: 0
    t.integer  "rushing_tds",     default: 0
    t.integer  "receptions",      default: 0
    t.integer  "receiving_yards", default: 0
    t.integer  "receiving_tds",   default: 0
    t.integer  "points",          default: 0
  end

  add_index "statistics", ["player_id"], name: "index_statistics_on_player_id"

  create_table "teams", force: true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "teams", ["user_id"], name: "index_teams_on_user_id"

  create_table "users", force: true do |t|
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "email",                          null: false
    t.string   "encrypted_password", limit: 128, null: false
    t.string   "confirmation_token", limit: 128
    t.string   "remember_token",     limit: 128, null: false
  end

  add_index "users", ["email"], name: "index_users_on_email"
  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
