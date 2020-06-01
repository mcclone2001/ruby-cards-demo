# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_25_223719) do

  create_table "cards", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "surface_id"
    t.integer "group_id", null: false
    t.index ["group_id"], name: "index_cards_on_group_id"
    t.index ["surface_id"], name: "index_cards_on_surface_id"
  end

  create_table "extras", force: :cascade do |t|
    t.string "name"
    t.string "extra_type"
    t.text "meta"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "card_id", null: false
    t.index ["card_id"], name: "index_extras_on_card_id"
  end

  create_table "extras_surfaces", id: false, force: :cascade do |t|
    t.integer "extra_id", null: false
    t.integer "surface_id", null: false
  end

  create_table "groups", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "group_id"
    t.integer "surface_id"
    t.index ["group_id"], name: "index_groups_on_group_id"
    t.index ["surface_id"], name: "index_groups_on_surface_id"
  end

  create_table "surfaces", force: :cascade do |t|
    t.integer "x"
    t.integer "y"
    t.integer "width"
    t.integer "height"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "cards", "groups"
  add_foreign_key "cards", "surfaces"
  add_foreign_key "extras", "cards"
  add_foreign_key "groups", "groups"
  add_foreign_key "groups", "surfaces"
end
