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

ActiveRecord::Schema.define(version: 2018_10_25_174610) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
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

  create_table "chat_messages", force: :cascade do |t|
    t.integer "user_id"
    t.integer "chat_room_id"
    t.string "body"
    t.string "submit_time"
    t.boolean "have_read", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chat_room_id"], name: "index_chat_messages_on_chat_room_id"
    t.index ["user_id"], name: "index_chat_messages_on_user_id"
  end

  create_table "chat_rooms", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "diagnoses", force: :cascade do |t|
    t.string "title"
    t.string "catchcopy"
    t.text "description"
    t.integer "sex"
    t.integer "match_id"
  end

  create_table "likes_users", force: :cascade do |t|
    t.integer "user_id"
    t.integer "to_likes_user_id"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["to_likes_user_id"], name: "index_likes_users_on_to_likes_user_id"
    t.index ["user_id"], name: "index_likes_users_on_user_id"
  end

  create_table "room_users", force: :cascade do |t|
    t.integer "user_id"
    t.integer "chat_room_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chat_room_id"], name: "index_room_users_on_chat_room_id"
    t.index ["user_id"], name: "index_room_users_on_user_id"
  end

  create_table "suggested_users", force: :cascade do |t|
    t.integer "user_id"
    t.integer "suggested_user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["suggested_user_id"], name: "index_suggested_users_on_suggested_user_id"
    t.index ["user_id"], name: "index_suggested_users_on_user_id"
  end

  create_table "survey_answers", force: :cascade do |t|
    t.integer "user_id"
    t.integer "survey_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "survey_questions_id"
    t.integer "value"
    t.index ["survey_id"], name: "index_survey_answers_on_survey_id"
    t.index ["survey_questions_id"], name: "index_survey_answers_on_survey_questions_id"
    t.index ["user_id"], name: "index_survey_answers_on_user_id"
  end

  create_table "survey_questions", force: :cascade do |t|
    t.integer "survey_id"
    t.string "title"
    t.integer "question_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["survey_id"], name: "index_survey_questions_on_survey_id"
  end

  create_table "surveys", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "active", default: false, null: false
  end

  create_table "user_images", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "first_name"
    t.string "last_name"
    t.string "first_kana"
    t.string "last_kana"
    t.integer "sex"
    t.integer "birth_year"
    t.integer "birth_month"
    t.integer "birth_date"
    t.integer "phone_number", limit: 8
    t.string "tall"
    t.string "weight_type"
    t.string "academic"
    t.string "blood_type"
    t.text "profile"
    t.string "state"
    t.string "birth_state"
    t.string "brother"
    t.string "martial_status"
    t.string "children"
    t.string "salary"
    t.string "job"
    t.string "job_detail"
    t.string "academic_status"
    t.string "holiday"
    t.string "check_point"
    t.string "when_meet"
    t.string "cigarette"
    t.string "alcohol"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "diagnoses_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
