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

ActiveRecord::Schema.define(version: 20161222192059) do

  create_table "deployments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "repo"
    t.string   "stack"
    t.text     "software",     limit: 65535
    t.text     "installation", limit: 65535
    t.integer  "form_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["form_id"], name: "index_deployments_on_form_id", using: :btree
  end

  create_table "forms", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "environment"
    t.string   "location"
    t.string   "purpose"
    t.string   "name"
    t.string   "accessibility"
    t.text     "description",   limit: 65535
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "load_balancers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "lb_type"
    t.string   "ip_address"
    t.string   "server_type"
    t.integer  "form_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["form_id"], name: "index_load_balancers_on_form_id", using: :btree
  end

  create_table "servers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "hostname"
    t.string   "ip"
    t.string   "os"
    t.integer  "cpucores"
    t.integer  "memory"
    t.integer  "disk"
    t.integer  "form_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["form_id"], name: "index_servers_on_form_id", using: :btree
  end

  add_foreign_key "deployments", "forms"
  add_foreign_key "load_balancers", "forms"
  add_foreign_key "servers", "forms"
end
