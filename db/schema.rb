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

ActiveRecord::Schema.define(version: 20171027224322) do

  create_table "explains", force: :cascade do |t|
    t.integer  "quest_id"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["quest_id"], name: "index_explains_on_quest_id"
  end

  create_table "quests", force: :cascade do |t|
    t.string   "info"
    t.string   "title"
    t.string   "content"
    t.string   "image"
    t.integer  "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "big"
  end

  create_table "ulevels", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "unit_id"
    t.integer  "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["unit_id"], name: "index_ulevels_on_unit_id"
    t.index ["user_id"], name: "index_ulevels_on_user_id"
  end

  create_table "units", force: :cascade do |t|
    t.string   "name"
    t.integer  "subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subject_id"], name: "index_units_on_subject_id"
  end

  create_table "uquests", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "quest_id"
    t.boolean  "correct"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "cnt"
    t.index ["quest_id"], name: "index_uquests_on_quest_id"
    t.index ["user_id"], name: "index_uquests_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "name"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "cnt"
  end

end
