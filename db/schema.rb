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

ActiveRecord::Schema.define(version: 2022_03_24_110018) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "lumpsums", force: :cascade do |t|
    t.integer "total_investment"
    t.float "expected_return_rate"
    t.integer "time_period"
    t.text "date_of_application"
    t.text "date_of_maturity"
    t.integer "invested_amount"
    t.integer "estimated_returns"
    t.integer "total_value"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_lumpsums_on_user_id"
  end

  create_table "sips", force: :cascade do |t|
    t.integer "monthly_investment"
    t.float "expected_return_rate"
    t.integer "time_period"
    t.text "date_of_application"
    t.text "date_of_maturity"
    t.integer "invested_amount"
    t.integer "estimated_returns"
    t.integer "total_value"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_sips_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.text "name"
    t.text "email"
    t.text "password"
    t.text "phone"
    t.text "state"
    t.text "city"
    t.text "dob"
    t.integer "role", default: 0
    t.text "pan"
    t.boolean "email_verified"
    t.boolean "phone_verified"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "lumpsums", "users"
  add_foreign_key "sips", "users"
end
