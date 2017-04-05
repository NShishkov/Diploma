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

ActiveRecord::Schema.define(version: 20170316004312) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brands", force: :cascade do |t|
    t.string   "name",       limit: 32, null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name",       limit: 64, null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string   "surname",            limit: 16,               null: false
    t.string   "name",               limit: 16,               null: false
    t.string   "patronymic",         limit: 16,               null: false
    t.string   "phone_number",       limit: 12,               null: false
    t.float    "rating",                        default: 0.0, null: false
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "contractors", force: :cascade do |t|
    t.string   "surname",            limit: 16,               null: false
    t.string   "name",               limit: 16,               null: false
    t.string   "patronymic",         limit: 16,               null: false
    t.string   "address",            limit: 64,               null: false
    t.string   "phone_number",       limit: 12,               null: false
    t.float    "rating",                        default: 0.0, null: false
    t.text     "info",                                        null: false
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "contractors_services", id: false, force: :cascade do |t|
    t.integer "contractor_id", null: false
    t.integer "service_id",    null: false
    t.index ["contractor_id", "service_id"], name: "index_contractors_services_on_contractor_id_and_service_id", using: :btree
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

  create_table "offers", force: :cascade do |t|
    t.decimal  "price"
    t.text     "comment"
    t.integer  "task_id"
    t.integer  "contractor_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["contractor_id"], name: "index_offers_on_contractor_id", using: :btree
    t.index ["task_id"], name: "index_offers_on_task_id", using: :btree
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "task_id"
    t.integer  "contractor_id"
    t.integer  "client_id"
    t.integer  "rating"
    t.text     "advantages"
    t.text     "disadvantages"
    t.text     "comment"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["client_id"], name: "index_reviews_on_client_id", using: :btree
    t.index ["contractor_id"], name: "index_reviews_on_contractor_id", using: :btree
    t.index ["task_id"], name: "index_reviews_on_task_id", using: :btree
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

  create_table "services", force: :cascade do |t|
    t.integer  "category_id"
    t.string   "name",        limit: 64, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["category_id"], name: "index_services_on_category_id", using: :btree
  end

  create_table "tasks", force: :cascade do |t|
    t.integer  "client_id"
    t.integer  "brand_id"
    t.integer  "model_id"
    t.string   "transmission",  limit: 2,                                  null: false
    t.string   "vin",           limit: 17,                                 null: false
    t.datetime "date_start"
    t.datetime "date_end"
    t.decimal  "price",                                                    null: false
    t.text     "info",                                                     null: false
    t.string   "status",                   default: "Ожидает предложений"
    t.integer  "contractor_id"
    t.datetime "created_at",                                               null: false
    t.datetime "updated_at",                                               null: false
    t.index ["brand_id"], name: "index_tasks_on_brand_id", using: :btree
    t.index ["client_id"], name: "index_tasks_on_client_id", using: :btree
    t.index ["contractor_id"], name: "index_tasks_on_contractor_id", using: :btree
    t.index ["model_id"], name: "index_tasks_on_model_id", using: :btree
  end

  create_table "uploads", force: :cascade do |t|
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "task_id"
    t.index ["task_id"], name: "index_uploads_on_task_id", using: :btree
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
  add_foreign_key "offers", "contractors"
  add_foreign_key "offers", "tasks"
  add_foreign_key "reviews", "clients"
  add_foreign_key "reviews", "contractors"
  add_foreign_key "reviews", "tasks"
  add_foreign_key "role_users", "roles"
  add_foreign_key "role_users", "users"
  add_foreign_key "services", "categories"
  add_foreign_key "tasks", "brands"
  add_foreign_key "tasks", "clients"
  add_foreign_key "tasks", "contractors"
  add_foreign_key "tasks", "models"
  add_foreign_key "uploads", "tasks"
end
