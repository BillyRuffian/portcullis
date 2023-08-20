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

ActiveRecord::Schema[7.0].define(version: 2023_08_20_123043) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "candidates", force: :cascade do |t|
    t.bigint "election_result_id", null: false
    t.string "name"
    t.bigint "party_id", null: false
    t.decimal "change"
    t.integer "order"
    t.integer "votes"
    t.decimal "share"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["election_result_id"], name: "index_candidates_on_election_result_id"
    t.index ["party_id"], name: "index_candidates_on_party_id"
  end

  create_table "commons_divisions", force: :cascade do |t|
    t.integer "division_ref"
    t.date "division_date"
    t.date "publication_updated_at"
    t.string "number"
    t.boolean "deferred"
    t.string "evel_type"
    t.string "evel_country"
    t.string "title"
    t.integer "aye_count"
    t.integer "no_count"
    t.integer "double_majority_aye_count"
    t.integer "double_majority_no_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["division_date"], name: "index_commons_divisions_on_division_date"
    t.index ["division_ref"], name: "index_commons_divisions_on_division_ref"
    t.index ["number"], name: "index_commons_divisions_on_number"
  end

  create_table "commons_votes", force: :cascade do |t|
    t.bigint "commons_division_id", null: false
    t.bigint "member_id", null: false
    t.integer "vote"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["commons_division_id"], name: "index_commons_votes_on_commons_division_id"
    t.index ["member_id"], name: "index_commons_votes_on_member_id"
  end

  create_table "constituencies", force: :cascade do |t|
    t.integer "constituency_ref"
    t.string "name"
    t.date "start_date"
    t.date "end_date"
    t.text "geometry"
    t.bigint "member_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "summary"
    t.index ["constituency_ref"], name: "index_constituencies_on_constituency_ref"
    t.index ["member_id"], name: "index_constituencies_on_member_id"
  end

  create_table "election_results", force: :cascade do |t|
    t.integer "election_ref"
    t.bigint "constituency_id", null: false
    t.date "election_date"
    t.boolean "general_election"
    t.string "title"
    t.boolean "notional"
    t.string "result"
    t.integer "turnout"
    t.integer "electorate"
    t.integer "majority"
    t.bigint "party_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["constituency_id"], name: "index_election_results_on_constituency_id"
    t.index ["election_ref"], name: "index_election_results_on_election_ref"
    t.index ["party_id"], name: "index_election_results_on_party_id"
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
    t.bigint "party_id", null: false
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

  add_foreign_key "candidates", "election_results"
  add_foreign_key "candidates", "parties"
  add_foreign_key "commons_votes", "commons_divisions"
  add_foreign_key "commons_votes", "members"
  add_foreign_key "constituencies", "members"
  add_foreign_key "election_results", "constituencies"
  add_foreign_key "election_results", "parties"
  add_foreign_key "members", "parties"
end
