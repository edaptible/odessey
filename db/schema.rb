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

ActiveRecord::Schema.define(version: 2020_06_06_091455) do

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

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "admin_role", default: "school_coord", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "agile_concepts", force: :cascade do |t|
    t.string "concept_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "agile_concepts_faculty_challenges", id: false, force: :cascade do |t|
    t.bigint "faculty_challenge_id", null: false
    t.bigint "agile_concept_id", null: false
    t.bigint "faculty_challenges_id", null: false
    t.bigint "agile_concepts_id", null: false
    t.index ["agile_concepts_id"], name: "index_agile_id_in_fac_agile_join"
    t.index ["faculty_challenge_id", "agile_concept_id"], name: "unique_fac_challenges_agile_concepts", unique: true
    t.index ["faculty_challenges_id"], name: "index_fac_challenges_id_in_fac_agile_join"
  end

  create_table "agile_concepts_student_challenges", id: false, force: :cascade do |t|
    t.bigint "student_challenge_id", null: false
    t.bigint "agile_concept_id", null: false
    t.bigint "student_challenges_id", null: false
    t.bigint "agile_concepts_id", null: false
    t.index ["agile_concepts_id"], name: "index_agile_id_in_stu_agile_join"
    t.index ["student_challenge_id", "agile_concept_id"], name: "unique_stu_challenges_agile_concepts", unique: true
    t.index ["student_challenges_id"], name: "index_stu_challenges_id_in_stu_agile_join"
  end

  create_table "cohorts", force: :cascade do |t|
    t.bigint "school_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["school_id"], name: "index_cohorts_on_school_id"
  end

  create_table "edgile_practices", force: :cascade do |t|
    t.string "practice_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "edgile_practices_faculty_challenges", id: false, force: :cascade do |t|
    t.bigint "faculty_challenge_id", null: false
    t.bigint "edgile_practice_id", null: false
    t.bigint "faculty_challenges_id", null: false
    t.bigint "edgile_practices_id", null: false
    t.index ["edgile_practices_id"], name: "index_edg_practices_id_in_fac_practices_join"
    t.index ["faculty_challenge_id", "edgile_practices_id"], name: "unique_fac_challenges_practices_values", unique: true
    t.index ["faculty_challenges_id"], name: "index_fac_challenges_id_in_fac_practices_join"
  end

  create_table "edgile_practices_student_challenges", id: false, force: :cascade do |t|
    t.bigint "student_challenge_id", null: false
    t.bigint "edgile_practice_id", null: false
    t.bigint "student_challenges_id", null: false
    t.bigint "edgile_practices_id", null: false
    t.index ["edgile_practices_id"], name: "index_edg_practices_id_in_stu_practices_join"
    t.index ["student_challenge_id", "edgile_practice_id"], name: "unique_stu_challenges_n_edg_practices", unique: true
    t.index ["student_challenges_id"], name: "index_stu_challenges_id_in_stu_practices_join"
  end

  create_table "edgile_values", force: :cascade do |t|
    t.string "value_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "edgile_values_faculty_challenges", id: false, force: :cascade do |t|
    t.bigint "faculty_challenge_id", null: false
    t.bigint "edgile_value_id", null: false
    t.bigint "faculty_challenges_id", null: false
    t.bigint "edgile_values_id", null: false
    t.index ["edgile_values_id"], name: "index_edg_values_id_in_fac_values_join"
    t.index ["faculty_challenge_id", "edgile_value_id"], name: "unique_fac_challenges_edg_values", unique: true
    t.index ["faculty_challenges_id"], name: "index_fac_challenges_id_in_fac_values_join"
  end

  create_table "edgile_values_student_challenges", id: false, force: :cascade do |t|
    t.bigint "student_challenge_id", null: false
    t.bigint "edgile_value_id", null: false
    t.bigint "student_challenges_id", null: false
    t.bigint "edgile_values_id", null: false
    t.index ["edgile_values_id"], name: "index_edg_values_id_in_stu_values_join"
    t.index ["student_challenge_id", "edgile_value_id"], name: "unique_stu_challenges_edg_values", unique: true
    t.index ["student_challenges_id"], name: "index_stu_challenges_id_in_stu_values_join"
  end

  create_table "faculty_challenges", force: :cascade do |t|
    t.string "faculty_challenge_name"
    t.bigint "faculty_development_group_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["faculty_development_group_id"], name: "index_faculty_challenges_on_faculty_development_group_id"
  end

  create_table "faculty_development_groups", force: :cascade do |t|
    t.string "development_grouping_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "schools", force: :cascade do |t|
    t.string "school_name"
    t.bigint "admin_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["admin_id"], name: "index_schools_on_admin_id"
  end

  create_table "student_challenge_levels", force: :cascade do |t|
    t.string "student_level_name", null: false
    t.integer "student_level_points", default: 0, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "student_challenges", force: :cascade do |t|
    t.string "student_challenge_name"
    t.bigint "student_challenge_level_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["student_challenge_level_id"], name: "index_student_challenges_on_student_challenge_level_id"
  end

  create_table "student_submissions", force: :cascade do |t|
    t.bigint "student_challenge_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["student_challenge_id"], name: "index_student_submissions_on_student_challenge_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "user_role", default: "student", null: false
    t.bigint "cohort_id", null: false
    t.index ["cohort_id"], name: "index_users_on_cohort_id"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "agile_concepts_faculty_challenges", "agile_concepts", column: "agile_concepts_id"
  add_foreign_key "agile_concepts_faculty_challenges", "faculty_challenges", column: "faculty_challenges_id"
  add_foreign_key "agile_concepts_student_challenges", "agile_concepts", column: "agile_concepts_id"
  add_foreign_key "agile_concepts_student_challenges", "student_challenges", column: "student_challenges_id"
  add_foreign_key "cohorts", "schools"
  add_foreign_key "edgile_practices_faculty_challenges", "edgile_practices", column: "edgile_practices_id"
  add_foreign_key "edgile_practices_faculty_challenges", "faculty_challenges", column: "faculty_challenges_id"
  add_foreign_key "edgile_practices_student_challenges", "edgile_practices", column: "edgile_practices_id"
  add_foreign_key "edgile_practices_student_challenges", "student_challenges", column: "student_challenges_id"
  add_foreign_key "edgile_values_faculty_challenges", "edgile_values", column: "edgile_values_id"
  add_foreign_key "edgile_values_faculty_challenges", "faculty_challenges", column: "faculty_challenges_id"
  add_foreign_key "edgile_values_student_challenges", "edgile_values", column: "edgile_values_id"
  add_foreign_key "edgile_values_student_challenges", "student_challenges", column: "student_challenges_id"
  add_foreign_key "faculty_challenges", "faculty_development_groups"
  add_foreign_key "schools", "admins"
  add_foreign_key "student_challenges", "student_challenge_levels"
  add_foreign_key "student_submissions", "student_challenges"
  add_foreign_key "users", "cohorts"
end
