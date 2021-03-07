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

ActiveRecord::Schema.define(version: 2021_03_07_103405) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "departments", force: :cascade do |t|
    t.text "name"
    t.text "head_quarters"
    t.text "email"
    t.string "contact_number"
  end

  create_table "orders", force: :cascade do |t|
    t.date "date"
    t.text "address"
    t.integer "user_id"
  end

  create_table "product_orders", force: :cascade do |t|
    t.integer "quantity"
    t.integer "order_id"
    t.integer "product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.integer "labour_hours"
    t.integer "department_id"
  end

  create_table "shifts", force: :cascade do |t|
    t.string "location"
    t.string "role"
    t.integer "hours"
    t.datetime "start_time"
    t.integer "department_id"
  end

  create_table "shifts_users", force: :cascade do |t|
    t.integer "user_id"
    t.integer "shift_id"
  end

  create_table "users", force: :cascade do |t|
    t.text "name"
    t.text "email"
    t.string "mobile"
    t.string "password_digest"
    t.boolean "admin"
    t.integer "available_hours"
  end

end
