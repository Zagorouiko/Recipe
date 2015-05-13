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

ActiveRecord::Schema.define(version: 20150513163526) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "categories_recipes", id: false, force: :cascade do |t|
    t.integer "categories_id"
    t.integer "recipes_id"
  end

  add_index "categories_recipes", ["categories_id"], name: "index_categories_recipes_on_categories_id", using: :btree
  add_index "categories_recipes", ["recipes_id"], name: "index_categories_recipes_on_recipes_id", using: :btree

  create_table "recipes", force: :cascade do |t|
    t.string   "name"
    t.string   "instruction"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end