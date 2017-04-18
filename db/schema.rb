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

ActiveRecord::Schema.define(version: 20170418102545) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree
  end

  create_table "campusties_activity_categories", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "created_by_id"
    t.integer  "modified_by_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["name"], name: "index_campusties_activity_categories_on_name", unique: true, using: :btree
  end

  create_table "campusties_admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "name",                   default: "", null: false
    t.string   "phone"
    t.integer  "created_by"
    t.integer  "modified_by"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_campusties_admin_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_campusties_admin_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "campusties_authentications", force: :cascade do |t|
    t.string   "oauth_signature"
    t.text     "lti_request_object"
    t.integer  "campusties_organization_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["campusties_organization_id"], name: "index_campusties_authentications_on_campusties_organization_id", using: :btree
  end

  create_table "campusties_org_admin_users", force: :cascade do |t|
    t.string   "name"
    t.integer  "campusties_organizations_id"
    t.string   "phone"
    t.integer  "created_by"
    t.integer  "modified_by"
    t.string   "email",                       default: "", null: false
    t.string   "encrypted_password",          default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",               default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.index ["email"], name: "index_campusties_org_admin_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_campusties_org_admin_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "campusties_organizations", force: :cascade do |t|
    t.string   "name"
    t.string   "logo"
    t.string   "email"
    t.string   "address"
    t.string   "phone"
    t.string   "status"
    t.string   "authetication_type"
    t.string   "slug"
    t.string   "vc_service_url"
    t.string   "vc_api_key"
    t.string   "vc_api_secret"
    t.string   "twitter"
    t.string   "facebook"
    t.string   "instagram"
    t.string   "rss"
    t.integer  "created_by"
    t.integer  "modified_by"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["name"], name: "index_campusties_organizations_on_name", unique: true, using: :btree
  end

  add_foreign_key "campusties_authentications", "campusties_organizations"
end
