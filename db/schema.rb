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

ActiveRecord::Schema.define(version: 2020_05_31_204240) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "action_text_rich_texts", force: :cascade do |t|
    t.string "name", null: false
    t.text "body"
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["record_type", "record_id", "name"], name: "index_action_text_rich_texts_uniqueness", unique: true
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "agile_concepts", force: :cascade do |t|
    t.string "concept_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "agile_concepts_challenges", id: false, force: :cascade do |t|
    t.bigint "challenge_id", null: false
    t.bigint "agile_concept_id", null: false
    t.bigint "challenges_id", null: false
    t.bigint "agile_concepts_id", null: false
    t.index ["agile_concepts_id"], name: "index_agile_concepts_challenges_on_agile_concepts_id"
    t.index ["challenges_id"], name: "index_agile_concepts_challenges_on_challenges_id"
  end

  create_table "challenge_levels", force: :cascade do |t|
    t.string "challenge_name"
    t.string "challenge_difficulty"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "challenges", force: :cascade do |t|
    t.string "challenge_name"
    t.text "time_commitment"
    t.text "prerequisits"
    t.text "student_instructions"
    t.text "faculty_coaching_notes"
    t.bigint "challenge_level_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["challenge_level_id"], name: "index_challenges_on_challenge_level_id"
  end

  create_table "challenges_edgile_practices", id: false, force: :cascade do |t|
    t.bigint "challenge_id", null: false
    t.bigint "edgile_practice_id", null: false
    t.bigint "challenges_id", null: false
    t.bigint "edgile_practices_id", null: false
    t.index ["challenges_id"], name: "index_challenges_edgile_practices_on_challenges_id"
    t.index ["edgile_practices_id"], name: "index_challenges_edgile_practices_on_edgile_practices_id"
  end

  create_table "challenges_edgile_values", id: false, force: :cascade do |t|
    t.bigint "challenge_id", null: false
    t.bigint "edgile_value_id", null: false
    t.bigint "challenges_id", null: false
    t.bigint "edgile_values_id", null: false
    t.index ["challenges_id"], name: "index_challenges_edgile_values_on_challenges_id"
    t.index ["edgile_values_id"], name: "index_challenges_edgile_values_on_edgile_values_id"
  end

  create_table "edgile_practices", force: :cascade do |t|
    t.string "practice_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "edgile_values", force: :cascade do |t|
    t.string "value_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "agile_concepts_challenges", "agile_concepts", column: "agile_concepts_id"
  add_foreign_key "agile_concepts_challenges", "challenges", column: "challenges_id"
  add_foreign_key "challenges", "challenge_levels"
  add_foreign_key "challenges_edgile_practices", "challenges", column: "challenges_id"
  add_foreign_key "challenges_edgile_practices", "edgile_practices", column: "edgile_practices_id"
  add_foreign_key "challenges_edgile_values", "challenges", column: "challenges_id"
  add_foreign_key "challenges_edgile_values", "edgile_values", column: "edgile_values_id"
end
