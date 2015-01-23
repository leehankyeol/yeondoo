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

ActiveRecord::Schema.define(version: 20150123013659) do

  create_table "menu_translations", force: :cascade do |t|
    t.integer  "menu_id",                null: false
    t.string   "locale",     limit: 255, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name",       limit: 255
  end

  add_index "menu_translations", ["locale"], name: "index_menu_translations_on_locale"
  add_index "menu_translations", ["menu_id"], name: "index_menu_translations_on_menu_id"

  create_table "menus", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.string   "category",     limit: 255
    t.string   "subcategory",  limit: 255
    t.string   "tag",          limit: 255
    t.string   "default",      limit: 255
    t.integer  "price"
    t.string   "option",       limit: 255
    t.integer  "option_price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image",        limit: 255
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.string   "summary"
    t.string   "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quotes", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.text     "content"
    t.string   "book",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "staff_translations", force: :cascade do |t|
    t.integer  "staff_id",    null: false
    t.string   "locale",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.text     "description"
  end

  add_index "staff_translations", ["locale"], name: "index_staff_translations_on_locale"
  add_index "staff_translations", ["staff_id"], name: "index_staff_translations_on_staff_id"

  create_table "staffs", force: :cascade do |t|
    t.string   "photo"
    t.string   "facebook_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
