# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_08_12_204433) do
  create_table "constituencies", force: :cascade do |t|
    t.integer "constituency_ref"
    t.string "name"
    t.date "start_date"
    t.date "end_date"
    t.text "geometry"
    t.integer "member_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["constituency_ref"], name: "index_constituencies_on_constituency_ref"
    t.index ["member_id"], name: "index_constituencies_on_member_id"
  end

  create_table "members", force: :cascade do |t|
    t.integer "member_ref"
    t.integer "house"
    t.string "list_as"
    t.string "display_as"
    t.string "full_title"
    t.string "address_as"
    t.string "gender"
    t.date "start_date"
    t.date "end_date"
    t.string "end_reason"
    t.integer "party_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "thumbnail_url"
    t.string "constituency_name"
    t.integer "constituency_ref"
    t.index ["constituency_ref"], name: "index_members_on_constituency_ref"
    t.index ["member_ref"], name: "index_members_on_member_ref", unique: true
    t.index ["party_id"], name: "index_members_on_party_id"
  end

  create_table "parties", force: :cascade do |t|
    t.integer "party_ref"
    t.string "name"
    t.string "abbreviation"
    t.string "background_hex"
    t.string "foreground_hex"
    t.boolean "lords_main_party"
    t.boolean "lords_spiritual_party"
    t.boolean "independent_party"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["party_ref"], name: "index_parties_on_party_ref", unique: true
  end

  add_foreign_key "constituencies", "members"
  add_foreign_key "members", "parties"
end
