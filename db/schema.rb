# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20170717161348) do

  create_table "admin_users", force: :cascade do |t|
    t.string   "user_name",  limit: 255
    t.string   "email",      limit: 255
    t.string   "password",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.boolean  "is_public"
    t.integer  "capacity",    limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "status",      limit: 255
  end

  create_table "people", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.text     "bio",        limit: 65535
    t.date     "birthday"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "permissions", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.string   "action",          limit: 255
    t.string   "subject_class",   limit: 255
    t.integer  "subject_id",      limit: 4
    t.string   "condition",       limit: 255
    t.string   "type",            limit: 255
    t.string   "module",          limit: 255
    t.string   "tab",             limit: 255
    t.string   "display_name",    limit: 255
    t.text     "description",     limit: 65535
    t.boolean  "published",                     default: true,  null: false
    t.boolean  "is_system",                     default: false, null: false
    t.boolean  "deleted",                       default: false, null: false
    t.string   "created_by",      limit: 255,                   null: false
    t.string   "updated_by",      limit: 255,                   null: false
    t.integer  "created_user_id", limit: 4,                     null: false
    t.integer  "updated_user_id", limit: 4,                     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "permissions", ["name", "subject_class", "subject_id"], name: "index_permission_on_name_and_subject", using: :btree
  add_index "permissions", ["name"], name: "index_permissions_on_name", using: :btree

  create_table "permissions_roles", id: false, force: :cascade do |t|
    t.integer "permission_id", limit: 4
    t.integer "role_id",       limit: 4
  end

  add_index "permissions_roles", ["permission_id", "role_id"], name: "index_permissions_roles_on_permission_id_and_role_id", using: :btree

  create_table "permissions_users", id: false, force: :cascade do |t|
    t.integer "permission_id", limit: 4
    t.integer "user_id",       limit: 4
  end

  add_index "permissions_users", ["permission_id", "user_id"], name: "index_permissions_users_on_permission_id_and_user_id", using: :btree

  create_table "roles", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.string   "role_no",         limit: 255
    t.integer  "resource_id",     limit: 4
    t.string   "resource_type",   limit: 255
    t.string   "module",          limit: 255
    t.text     "description",     limit: 65535
    t.boolean  "published",                     default: true,  null: false
    t.boolean  "deleted",                       default: false, null: false
    t.boolean  "is_system",                     default: false, null: false
    t.string   "display_name",    limit: 255
    t.string   "created_by",      limit: 255,                   null: false
    t.string   "updated_by",      limit: 255,                   null: false
    t.integer  "created_user_id", limit: 4,                     null: false
    t.integer  "updated_user_id", limit: 4,                     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id", using: :btree
  add_index "roles", ["name"], name: "index_roles_on_name", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id", limit: 4
    t.integer "role_id", limit: 4
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id", using: :btree

end
