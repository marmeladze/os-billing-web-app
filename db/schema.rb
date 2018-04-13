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

ActiveRecord::Schema.define(version: 20180413153036) do

  create_table "bill_units", force: :cascade do |t|
    t.float    "vcpu",       limit: 24
    t.float    "ram",        limit: 24
    t.float    "vdisk",      limit: 24
    t.datetime "date"
    t.boolean  "enabled"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "cpu_loads", force: :cascade do |t|
    t.integer  "instance_id", limit: 4
    t.float    "percentage",  limit: 24
    t.datetime "observed_at"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "cpu_loads", ["instance_id"], name: "index_cpu_loads_on_instance_id", using: :btree

  create_table "fips", force: :cascade do |t|
    t.string   "status",      limit: 255
    t.string   "tenant_uid",  limit: 255
    t.string   "fixed_ip",    limit: 255
    t.string   "floating_ip", limit: 255
    t.datetime "creation"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "fips", ["floating_ip"], name: "index_fips_on_floating_ip", unique: true, using: :btree

  create_table "firewalls", force: :cascade do |t|
    t.string   "tenant_uid", limit: 255
    t.string   "status",     limit: 255
    t.text     "routers",    limit: 65535
    t.string   "name",       limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "flavors", force: :cascade do |t|
    t.integer  "os_id",      limit: 4
    t.string   "name",       limit: 255
    t.integer  "ram",        limit: 4
    t.integer  "disk",       limit: 4
    t.integer  "vcpus",      limit: 4
    t.boolean  "is_public"
    t.boolean  "enabled"
    t.float    "price",      limit: 24
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "images", force: :cascade do |t|
    t.integer  "uid",        limit: 4
    t.string   "name",       limit: 255
    t.string   "status",     limit: 255
    t.float    "price",      limit: 24
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "instance_bills", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.float    "total_vcpu",  limit: 24
    t.float    "total_ram",   limit: 24
    t.float    "total_vdisk", limit: 24
    t.float    "total_cost",  limit: 24
    t.boolean  "enabled"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "instance_statistics", force: :cascade do |t|
    t.float    "total_hours",           limit: 24
    t.float    "total_local_gb_usage",  limit: 24
    t.float    "total_memory_mb_usage", limit: 24
    t.float    "total_vcpus_usage",     limit: 24
    t.integer  "instance_id",           limit: 4
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  add_index "instance_statistics", ["instance_id"], name: "index_instance_statistics_on_instance_id", using: :btree

  create_table "instances", force: :cascade do |t|
    t.string   "uid",        limit: 255
    t.integer  "cpu",        limit: 4
    t.integer  "ram",        limit: 4
    t.integer  "disk",       limit: 4
    t.string   "flavor",     limit: 255
    t.string   "image",      limit: 255
    t.string   "zone",       limit: 255
    t.string   "status",     limit: 255
    t.string   "state",      limit: 255
    t.datetime "creation"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "name",       limit: 255
    t.string   "tenant_id",  limit: 255
    t.string   "owner_uid",  limit: 255
  end

  add_index "instances", ["name"], name: "index_instances_on_name", unique: true, using: :btree

  create_table "ip_lists", force: :cascade do |t|
    t.string   "address",      limit: 255
    t.string   "list_type",    limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "instance_uid", limit: 255
  end

  create_table "load_balancers", force: :cascade do |t|
    t.string   "name",                limit: 255
    t.string   "operating_status",    limit: 255
    t.string   "provisioning_status", limit: 255
    t.string   "provider",            limit: 255
    t.string   "vip_address",         limit: 255
    t.string   "tenant_uid",          limit: 255
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  add_index "load_balancers", ["vip_address"], name: "index_load_balancers_on_vip_address", unique: true, using: :btree

  create_table "owners", force: :cascade do |t|
    t.string   "uid",        limit: 255
    t.string   "email",      limit: 255
    t.string   "tenant",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "name",       limit: 255
  end

  add_index "owners", ["email"], name: "index_owners_on_email", unique: true, using: :btree

  create_table "routers", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "status",     limit: 255
    t.string   "address",    limit: 255
    t.string   "tenant_uid", limit: 255
    t.datetime "creation"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "routers", ["address"], name: "index_routers_on_address", unique: true, using: :btree

  create_table "tenant_bills", force: :cascade do |t|
    t.integer  "tenant_id",    limit: 4
    t.float    "total_vcpu",   limit: 24
    t.float    "total_ram",    limit: 24
    t.float    "total_vdisk",  limit: 24
    t.datetime "bill_month"
    t.float    "totoal_usage", limit: 24
    t.boolean  "status"
    t.boolean  "enabled"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "volumes", force: :cascade do |t|
    t.string   "volume_type",  limit: 255
    t.integer  "amount",       limit: 4
    t.boolean  "available"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.datetime "creation"
    t.string   "owner_uid",    limit: 255
    t.string   "instance_uid", limit: 255
    t.string   "uid",          limit: 255
  end

  create_table "wallet_actions", force: :cascade do |t|
    t.integer  "wallet_id",   limit: 4
    t.string   "action_type", limit: 255
    t.float    "amount",      limit: 24
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "wallet_actions", ["wallet_id"], name: "index_wallet_actions_on_wallet_id", using: :btree

  create_table "wallets", force: :cascade do |t|
    t.integer  "owner_id",   limit: 4
    t.float    "balance",    limit: 24
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "wallets", ["owner_id"], name: "index_wallets_on_owner_id", using: :btree

  add_foreign_key "cpu_loads", "instances"
  add_foreign_key "instance_statistics", "instances"
  add_foreign_key "wallet_actions", "wallets"
  add_foreign_key "wallets", "owners"
end
