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

ActiveRecord::Schema.define(version: 20180313182955) do

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
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "name",       limit: 255
    t.string   "tenant_id",  limit: 255
    t.string   "owner_uid",  limit: 255
  end

  create_table "ip_lists", force: :cascade do |t|
    t.string   "address",      limit: 255
    t.string   "type",         limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "instance_uid", limit: 255
  end

  create_table "owners", force: :cascade do |t|
    t.string   "uid",        limit: 255
    t.string   "email",      limit: 255
    t.string   "tenant",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "name",       limit: 255
  end

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

  add_foreign_key "cpu_loads", "instances"
  add_foreign_key "instance_statistics", "instances"
end
