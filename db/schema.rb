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

ActiveRecord::Schema.define(version: 2019_02_25_162315) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"

  create_table "action_text_rich_texts", force: :cascade do |t|
    t.string "name", null: false
    t.text "body"
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["record_type", "record_id", "name"], name: "index_action_text_rich_texts_uniqueness", unique: true
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "admins", force: :cascade do |t|
    t.uuid "token", default: -> { "gen_random_uuid()" }, null: false
    t.uuid "token_temp", default: -> { "gen_random_uuid()" }, null: false
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
    t.datetime "discarded_at"
    t.string "first_name", default: "", null: false
    t.string "last_name", default: "", null: false
    t.string "admin_code", default: "", null: false
    t.index ["confirmation_token"], name: "index_admins_on_confirmation_token", unique: true
    t.index ["discarded_at"], name: "index_admins_on_discarded_at", unique: true
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
    t.index ["token"], name: "index_admins_on_token", unique: true
    t.index ["token_temp"], name: "index_admins_on_token_temp", unique: true
    t.index ["unlock_token"], name: "index_admins_on_unlock_token", unique: true
  end

  create_table "agents", force: :cascade do |t|
    t.uuid "token", default: -> { "gen_random_uuid()" }, null: false
    t.uuid "token_temp", default: -> { "gen_random_uuid()" }, null: false
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
    t.datetime "discarded_at"
    t.string "first_name", default: "", null: false
    t.string "last_name", default: "", null: false
    t.string "agent_code", default: "", null: false
    t.index ["confirmation_token"], name: "index_agents_on_confirmation_token", unique: true
    t.index ["discarded_at"], name: "index_agents_on_discarded_at", unique: true
    t.index ["email"], name: "index_agents_on_email", unique: true
    t.index ["reset_password_token"], name: "index_agents_on_reset_password_token", unique: true
    t.index ["token"], name: "index_agents_on_token", unique: true
    t.index ["token_temp"], name: "index_agents_on_token_temp", unique: true
    t.index ["unlock_token"], name: "index_agents_on_unlock_token", unique: true
  end

  create_table "categories", force: :cascade do |t|
    t.uuid "token", default: -> { "gen_random_uuid()" }, null: false
    t.uuid "token_temp", default: -> { "gen_random_uuid()" }, null: false
    t.string "title", default: "", null: false
    t.string "category_code", default: "", null: false
    t.boolean "publish", default: false, null: false
    t.datetime "discarded_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["discarded_at"], name: "index_categories_on_discarded_at", unique: true
    t.index ["token"], name: "index_categories_on_token", unique: true
    t.index ["token_temp"], name: "index_categories_on_token_temp", unique: true
  end

  create_table "customer_forms", force: :cascade do |t|
    t.uuid "token", default: -> { "gen_random_uuid()" }, null: false
    t.uuid "token_temp", default: -> { "gen_random_uuid()" }, null: false
    t.string "title", default: "", null: false
    t.json "raw_form", default: "", null: false
    t.string "customer_form_code", default: "", null: false
    t.bigint "category_id"
    t.bigint "form_id"
    t.bigint "agent_id"
    t.datetime "discarded_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "customer_id"
    t.index ["agent_id"], name: "index_customer_forms_on_agent_id"
    t.index ["category_id"], name: "index_customer_forms_on_category_id"
    t.index ["customer_id"], name: "index_customer_forms_on_customer_id"
    t.index ["discarded_at"], name: "index_customer_forms_on_discarded_at", unique: true
    t.index ["form_id"], name: "index_customer_forms_on_form_id"
    t.index ["token"], name: "index_customer_forms_on_token", unique: true
    t.index ["token_temp"], name: "index_customer_forms_on_token_temp", unique: true
  end

  create_table "customers", force: :cascade do |t|
    t.uuid "token", default: -> { "gen_random_uuid()" }, null: false
    t.uuid "token_temp", default: -> { "gen_random_uuid()" }, null: false
    t.string "first_name", default: "", null: false
    t.string "last_name", default: "", null: false
    t.string "email", default: "", null: false
    t.bigint "telephone_number"
    t.bigint "fax_number"
    t.text "street_address", default: "", null: false
    t.text "address_line_2", default: "", null: false
    t.string "city", default: "", null: false
    t.string "state", default: "", null: false
    t.integer "zip_code"
    t.string "country", default: "", null: false
    t.text "additional_information", default: "", null: false
    t.date "date_of_birth"
    t.string "customer_code", null: false
    t.bigint "agent_id"
    t.datetime "discarded_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["agent_id"], name: "index_customers_on_agent_id"
    t.index ["discarded_at"], name: "index_customers_on_discarded_at", unique: true
    t.index ["token"], name: "index_customers_on_token", unique: true
    t.index ["token_temp"], name: "index_customers_on_token_temp", unique: true
  end

  create_table "forms", force: :cascade do |t|
    t.uuid "token", default: -> { "gen_random_uuid()" }, null: false
    t.uuid "token_temp", default: -> { "gen_random_uuid()" }, null: false
    t.string "title", default: "", null: false
    t.json "raw_form", default: "", null: false
    t.string "form_code", default: "", null: false
    t.boolean "is_payment_required", default: false, null: false
    t.float "amount", default: 0.0, null: false
    t.boolean "publish", default: false, null: false
    t.bigint "category_id"
    t.datetime "discarded_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_forms_on_category_id"
    t.index ["discarded_at"], name: "index_forms_on_discarded_at", unique: true
    t.index ["token"], name: "index_forms_on_token", unique: true
    t.index ["token_temp"], name: "index_forms_on_token_temp", unique: true
  end

  create_table "paypal_plans", force: :cascade do |t|
    t.uuid "token", default: -> { "gen_random_uuid()" }, null: false
    t.uuid "token_temp", default: -> { "gen_random_uuid()" }, null: false
    t.string "name", default: "", null: false
    t.string "description", default: "", null: false
    t.string "plan_type", default: "", null: false
    t.integer "frequency_interval", default: 0, null: false
    t.string "frequency", default: "", null: false
    t.integer "cycles", default: 0, null: false
    t.float "amount", default: 0.0, null: false
    t.string "payment_definitions_name", default: "", null: false
    t.integer "max_fail_attempts", default: 0, null: false
    t.string "auto_bill_amount", default: "", null: false
    t.string "initial_fail_amount_action", default: "", null: false
    t.string "planid", null: false
    t.string "plan_state", default: "", null: false
    t.string "payment_type", default: "", null: false
    t.datetime "discarded_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["discarded_at"], name: "index_paypal_plans_on_discarded_at", unique: true
    t.index ["token"], name: "index_paypal_plans_on_token", unique: true
    t.index ["token_temp"], name: "index_paypal_plans_on_token_temp", unique: true
  end

  create_table "paypal_subscriptions", force: :cascade do |t|
    t.uuid "token", default: -> { "gen_random_uuid()" }, null: false
    t.uuid "token_temp", default: -> { "gen_random_uuid()" }, null: false
    t.string "name", default: "", null: false
    t.string "description", default: "", null: false
    t.string "start_date", default: "", null: false
    t.string "state", default: "", null: false
    t.string "subscription_id", default: "", null: false
    t.bigint "agent_id"
    t.bigint "paypal_plan_id"
    t.datetime "discarded_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["agent_id"], name: "index_paypal_subscriptions_on_agent_id"
    t.index ["discarded_at"], name: "index_paypal_subscriptions_on_discarded_at", unique: true
    t.index ["paypal_plan_id"], name: "index_paypal_subscriptions_on_paypal_plan_id"
    t.index ["token"], name: "index_paypal_subscriptions_on_token", unique: true
    t.index ["token_temp"], name: "index_paypal_subscriptions_on_token_temp", unique: true
  end

  create_table "versions", force: :cascade do |t|
    t.string "item_type", null: false
    t.integer "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object"
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id"
  end

  add_foreign_key "customer_forms", "agents"
  add_foreign_key "customer_forms", "categories"
  add_foreign_key "customer_forms", "customers"
  add_foreign_key "customer_forms", "forms"
  add_foreign_key "customers", "agents"
  add_foreign_key "forms", "categories"
  add_foreign_key "paypal_subscriptions", "agents"
  add_foreign_key "paypal_subscriptions", "paypal_plans"
end
