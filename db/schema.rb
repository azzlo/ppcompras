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

ActiveRecord::Schema.define(version: 20170519203457) do

  create_table "offers", force: :cascade do |t|
    t.float    "unit_pricing"
    t.integer  "delivery_days"
    t.date     "validity"
    t.text     "observations"
    t.boolean  "recommended"
    t.integer  "credit_days"
    t.integer  "requisition_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.integer  "supplier_id"
    t.boolean  "selected",       default: false
    t.index ["requisition_id"], name: "index_offers_on_requisition_id"
    t.index ["supplier_id"], name: "index_offers_on_supplier_id"
  end

  create_table "requisitions", force: :cascade do |t|
    t.integer  "number"
    t.date     "create_at"
    t.integer  "item"
    t.string   "material"
    t.text     "description"
    t.float    "quantity"
    t.string   "unit"
    t.string   "contact_person"
    t.text     "observations"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.boolean  "active",         default: false
    t.boolean  "pending",        default: false
    t.boolean  "complete",       default: false
    t.date     "received_at"
  end

  create_table "suppliers", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "country"
    t.string   "postal_code"
    t.string   "phone"
    t.string   "category"
    t.string   "contact"
    t.text     "observations"
    t.string   "bank"
    t.string   "account_number"
    t.string   "number_branch_bank"
    t.string   "region"
    t.string   "last_tax_declaration"
    t.string   "rfc"
    t.string   "account_status"
    t.string   "constitutive_act"
    t.string   "policies"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "email",                   default: "",   null: false
    t.string   "encrypted_password",      default: "",   null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",           default: 0,    null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "number"
    t.boolean  "data_validation",         default: true
    t.date     "last_data_validation_at"
    t.index ["email"], name: "index_suppliers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_suppliers_on_reset_password_token", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
