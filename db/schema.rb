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

ActiveRecord::Schema.define(version: 20160410174747) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.string   "slug"
    t.text     "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories_items", id: false, force: :cascade do |t|
    t.integer "category_id"
    t.integer "item_id"
  end

  add_index "categories_items", ["category_id", "item_id"], name: "categories_items_index", unique: true

  create_table "conditions", force: :cascade do |t|
    t.string   "name"
    t.string   "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "conditions_items", id: false, force: :cascade do |t|
    t.integer "condition_id"
    t.integer "item_id"
  end

  add_index "conditions_items", ["condition_id", "item_id"], name: "conditions_items_index", unique: true

  create_table "datafiles", force: :cascade do |t|
    t.string   "name"
    t.text     "note"
    t.string   "rawdatafile"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "datafiles_items", id: false, force: :cascade do |t|
    t.integer "datafile_id"
    t.integer "item_id"
  end

  add_index "datafiles_items", ["datafile_id", "item_id"], name: "datafiles_items_index", unique: true

  create_table "fieldoptions", force: :cascade do |t|
    t.string   "name"
    t.text     "note"
    t.integer  "itemfield_id"
    t.string   "slug"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "fieldoptions_items", id: false, force: :cascade do |t|
    t.integer "fieldoption_id"
    t.integer "item_id"
  end

  add_index "fieldoptions_items", ["fieldoption_id", "item_id"], name: "fieldoptions_items_index", unique: true

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"

  create_table "imagefiles", force: :cascade do |t|
    t.string   "name"
    t.text     "note"
    t.string   "rawimagefile"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "imagefiles_items", id: false, force: :cascade do |t|
    t.integer "imagefile_id"
    t.integer "item_id"
  end

  add_index "imagefiles_items", ["imagefile_id", "item_id"], name: "imagefiles_items_index", unique: true

  create_table "itemfields", force: :cascade do |t|
    t.string   "name"
    t.string   "slug"
    t.text     "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "collection_id"
    t.string   "name"
    t.boolean  "status",          default: false
    t.integer  "year"
    t.float    "value"
    t.float    "cost"
    t.string   "slug"
    t.string   "alphabet_letter"
    t.string   "reference"
    t.text     "note"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "items_relations", id: false, force: :cascade do |t|
    t.integer "item_a_id", null: false
    t.integer "item_b_id", null: false
  end

  create_table "items_rolodexes", id: false, force: :cascade do |t|
    t.integer "item_id"
    t.integer "rolodex_id"
  end

  add_index "items_rolodexes", ["item_id", "rolodex_id"], name: "items_rolodexes_index", unique: true

  create_table "items_virtualcollections", id: false, force: :cascade do |t|
    t.integer "item_id"
    t.integer "virtualcollection_id"
  end

  add_index "items_virtualcollections", ["item_id", "virtualcollection_id"], name: "items_virtualcollections_index", unique: true

  create_table "rolodexes", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "cell"
    t.string   "tell"
    t.text     "history"
    t.text     "address"
    t.string   "slug"
    t.integer  "type",       default: 0
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "virtualcollections", force: :cascade do |t|
    t.string   "name"
    t.string   "slug"
    t.text     "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
