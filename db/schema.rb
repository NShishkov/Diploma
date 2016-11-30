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

ActiveRecord::Schema.define(version: 20161116194637) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brands", force: :cascade do |t|
    t.string   "name",       limit: 32, null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string   "surname",      limit: 16,               null: false
    t.string   "name",         limit: 16,               null: false
    t.string   "patronymic",   limit: 16,               null: false
    t.string   "phone_number", limit: 12,               null: false
    t.float    "rating",                  default: 0.0, null: false
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "contractors", force: :cascade do |t|
    t.string   "surname",      limit: 16,               null: false
    t.string   "name",         limit: 16,               null: false
    t.string   "patronymic",   limit: 16,               null: false
    t.string   "address",      limit: 64,               null: false
    t.string   "phone_number", limit: 12,               null: false
    t.float    "rating",                  default: 0.0, null: false
    t.text     "info",                                  null: false
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "models", force: :cascade do |t|
    t.integer  "brand_id"
    t.string   "name",                limit: 32, null: false
    t.text     "description",                    null: false
    t.string   "years_of_production", limit: 32, null: false
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.index ["brand_id"], name: "index_models_on_brand_id", using: :btree
  end

  create_table "role_users", force: :cascade do |t|
    t.integer  "role_id"
    t.integer  "user_id"
    t.string   "us_role_type"
    t.integer  "us_role_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["role_id"], name: "index_role_users_on_role_id", using: :btree
    t.index ["us_role_type", "us_role_id"], name: "index_role_users_on_us_role_type_and_us_role_id", using: :btree
    t.index ["user_id"], name: "index_role_users_on_user_id", using: :btree
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name",       limit: 16, null: false
    t.string   "info"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["name"], name: "index_roles_on_name", unique: true, using: :btree
  end

  create_table "tasks", force: :cascade do |t|
    t.integer  "client_id"
    t.integer  "brand_id"
    t.integer  "model_id"
    t.string   "transmission"
    t.string   "vin"
    t.datetime "date_start"
    t.datetime "date_end"
    t.decimal  "price"
    t.text     "info"
    t.string   "status"
    t.integer  "contractor_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["brand_id"], name: "index_tasks_on_brand_id", using: :btree
    t.index ["client_id"], name: "index_tasks_on_client_id", using: :btree
    t.index ["contractor_id"], name: "index_tasks_on_contractor_id", using: :btree
    t.index ["model_id"], name: "index_tasks_on_model_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                           null: false
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_me_token"
    t.datetime "remember_me_token_expires_at"
    t.string   "reset_password_token"
    t.datetime "reset_password_token_expires_at"
    t.datetime "reset_password_email_sent_at"
    t.string   "activation_state"
    t.string   "activation_token"
    t.datetime "activation_token_expires_at"
    t.index ["activation_token"], name: "index_users_on_activation_token", using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["remember_me_token"], name: "index_users_on_remember_me_token", using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", using: :btree
  end

  add_foreign_key "models", "brands"
  add_foreign_key "role_users", "roles"
  add_foreign_key "role_users", "users"
  add_foreign_key "tasks", "brands"
  add_foreign_key "tasks", "clients"
  add_foreign_key "tasks", "contractors"
  add_foreign_key "tasks", "models"
end
