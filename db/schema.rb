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

ActiveRecord::Schema.define(version: 2020_06_21_201615) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ammo_uses", force: :cascade do |t|
    t.bigint "ammo_id"
    t.bigint "weapon_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ammo_id"], name: "index_ammo_uses_on_ammo_id"
    t.index ["weapon_id"], name: "index_ammo_uses_on_weapon_id"
  end

  create_table "ammos", force: :cascade do |t|
    t.bigint "category_id"
    t.string "name"
    t.string "slug"
    t.integer "buy"
    t.integer "sell"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_ammos_on_category_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "weapons", force: :cascade do |t|
    t.bigint "category_id"
    t.string "name"
    t.string "slug"
    t.integer "buy"
    t.integer "sell"
    t.integer "mag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "weapon_type"
    t.index ["category_id"], name: "index_weapons_on_category_id"
  end

  add_foreign_key "ammo_uses", "ammos"
  add_foreign_key "ammo_uses", "weapons"
  add_foreign_key "ammos", "categories"
  add_foreign_key "weapons", "categories"
end
