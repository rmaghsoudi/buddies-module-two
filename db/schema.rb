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

ActiveRecord::Schema.define(version: 2019_05_29_185301) do

  create_table "ratings", force: :cascade do |t|
    t.float "value"
    t.text "review"
    t.integer "user_id"
  end

  create_table "study_buddies", force: :cascade do |t|
    t.integer "tutor_id"
    t.integer "student_id"
  end

  create_table "study_sessions", force: :cascade do |t|
    t.string "name"
    t.integer "tutor_id"
    t.integer "student_id"
    t.integer "subject_id"
    t.datetime "date"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name"
    t.text "description"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.text "bio"
    t.boolean "tutor"
    t.string "password_digest"
  end

end
