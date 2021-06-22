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

ActiveRecord::Schema.define(version: 20210622141933) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "containers", force: :cascade do |t|
    t.string "number", null: false
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
    t.datetime "eta_border"
    t.datetime "etd_border"
    t.string "offloading_site"
    t.datetime "eta_site"
    t.boolean "offloaded"
    t.text "remark"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "departed_dar_at"
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

  create_table "shipments", force: :cascade do |t|
    t.string "number"
    t.bigint "customer_id"
    t.datetime "documents_received_at"
    t.string "vessel_name"
    t.bigint "shipping_line_id"
    t.integer "loading_port_id"
    t.integer "offloading_port_id"
    t.datetime "eta_to_offloading_port"
    t.datetime "bearthed_at"
    t.datetime "discharged_at"
    t.string "shipper_name"
    t.text "remarks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_shipments_on_customer_id"
    t.index ["shipping_line_id"], name: "index_shipments_on_shipping_line_id"
  end

  create_table "shipping_lines", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trip_containers", force: :cascade do |t|
    t.bigint "trip_id"
    t.string "container_number"
    t.decimal "container_height"
    t.decimal "container_weight"
    t.decimal "container_length"
    t.decimal "container_gross_weight"
    t.decimal "container_net_weight"
    t.decimal "container_tare"
    t.string "container_commodity"
    t.bigint "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_trip_containers_on_customer_id"
    t.index ["trip_id"], name: "index_trip_containers_on_trip_id"
  end

  create_table "trip_updates", force: :cascade do |t|
    t.bigint "trip_id"
    t.string "location_details"
    t.datetime "eta_border"
    t.datetime "eta_site"
    t.integer "updated_by_user_id"
    t.decimal "latitude", precision: 10, scale: 8
    t.decimal "longitude", precision: 11, scale: 8
    t.string "country"
    t.string "province"
    t.string "district"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["trip_id"], name: "index_trip_updates_on_trip_id"
  end

  create_table "trips", force: :cascade do |t|
    t.bigint "truck_id"
    t.bigint "shipment_id"
    t.integer "driver_id"
    t.string "number"
    t.integer "loading_port_id"
    t.string "offloading_site"
    t.datetime "onloaded_at"
    t.string "offloaded_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shipment_id"], name: "index_trips_on_shipment_id"
    t.index ["truck_id"], name: "index_trips_on_truck_id"
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
  add_foreign_key "shipments", "customers"
  add_foreign_key "shipments", "shipping_lines"
  add_foreign_key "trip_containers", "customers"
  add_foreign_key "trip_containers", "trips"
  add_foreign_key "trip_updates", "trips"
  add_foreign_key "trips", "shipments"
  add_foreign_key "trips", "trucks"
end
