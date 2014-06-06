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

ActiveRecord::Schema.define(version: 20140518105054) do

  create_table "description_of_components", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "rus_name"
    t.text     "full_description"
  end

  create_table "description_of_pcs", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "hdd_percent_of_price"
    t.integer  "motherboard_percent_of_price"
    t.integer  "processor_percent_of_price"
    t.integer  "ram_percent_of_price"
    t.integer  "systemBlock_percent_of_price"
    t.integer  "videoCard_percent_of_price"
  end

  create_table "price_of_components", force: true do |t|
    t.integer  "price_range_id"
    t.float    "price"
    t.string   "component"
    t.string   "full_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "price_ranges", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "min"
    t.integer  "max"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "range"
  end

  create_table "selected_options_of_pcs", force: true do |t|
    t.integer  "user_id"
    t.integer  "description_of_pc_id"
    t.integer  "price_range_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
