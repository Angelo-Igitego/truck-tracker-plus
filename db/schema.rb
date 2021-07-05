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

ActiveRecord::Schema.define(version: 20210705110338) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "containers", force: :cascade do |t|
    t.string "number", null: false
    t.bigint "customer_id", null: false
    t.integer "driver_id"
    t.datetime "docs_rcd"
    t.string "shipper"
    t.integer "port_of_loading_id"
    t.string "commodity"
    t.string "bill_of_ladding_number"
    t.string "service"
    t.decimal "size"
    t.decimal "gross_weight_kgs"
    t.bigint "shipping_line_id"
    t.datetime "eta_dar"
    t.datetime "vessel_berthe_date"
    t.datetime "vessel_discharge_date"
    t.datetime "loading_at_dar"
    t.bigint "truck_id"
    t.string "truck_position"
    t.datetime "departed_dar_at"
    t.datetime "eta_border"
    t.datetime "etd_border"
    t.string "offloading_site"
    t.datetime "eta_site"
    t.datetime "offloaded_at"
    t.text "remark"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "shipment_number", default: ""
    t.index ["customer_id"], name: "index_containers_on_customer_id"
    t.index ["shipping_line_id"], name: "index_containers_on_shipping_line_id"
    t.index ["truck_id"], name: "index_containers_on_truck_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "business_name"
    t.string "po_box"
    t.string "phone"
    t.string "email"
    t.string "contact_person_names"
    t.string "contact_person_phone"
    t.string "tin_number"
    t.string "office_location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ports", force: :cascade do |t|
    t.string "name"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shipping_lines", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trucks", force: :cascade do |t|
    t.string "model"
    t.decimal "tare"
    t.string "license_number"
    t.string "unique_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.string "gender"
    t.string "passport_number"
    t.string "driving_license_number"
    t.string "type"
    t.string "nationality"
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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["driving_license_number"], name: "index_users_on_driving_license_number", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["passport_number"], name: "index_users_on_passport_number", unique: true
    t.index ["phone"], name: "index_users_on_phone", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

  add_foreign_key "containers", "shipping_lines"
  add_foreign_key "containers", "trucks"
end
