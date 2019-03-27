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

ActiveRecord::Schema.define(version: 2019_03_27_222241) do

  create_table "languages", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "picture"
    t.string "first_name"
    t.string "last_name"
    t.string "gender"
    t.integer "age"
    t.string "street_address"
    t.string "city"
    t.string "state"
    t.string "country"
    t.string "nationality"
    t.string "native_language"
    t.string "introduction"
    t.boolean "disable"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_people_on_email", unique: true
    t.index ["reset_password_token"], name: "index_people_on_reset_password_token", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "picture"
    t.string "first_name"
    t.string "last_name"
    t.string "gender"
    t.integer "age"
    t.string "street_address"
    t.string "city"
    t.string "state"
    t.string "country"
    t.string "nationality"
    t.string "native_language"
    t.string "interested_language1"
    t.string "language1_level"
    t.string "interested_language2"
    t.string "language2_level"
    t.string "introduction"
    t.boolean "disable"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
