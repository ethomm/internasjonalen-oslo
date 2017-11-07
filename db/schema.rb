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

ActiveRecord::Schema.define(version: 20171106212641) do

  create_table "categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.text "description"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drinks", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.text "description"
    t.string "slug"
    t.decimal "price", precision: 10
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "picture"
    t.index ["category_id"], name: "index_drinks_on_category_id"
  end

  create_table "globalsettings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.boolean "mandag"
    t.boolean "tirsdag"
    t.boolean "onsdag"
    t.boolean "torsdag"
    t.boolean "fredag"
    t.boolean "lørdag"
    t.boolean "søndag"
    t.integer "mandaghour"
    t.integer "mandagminute"
    t.integer "tirsdaghour"
    t.integer "tirsdagminute"
    t.integer "onsdaghour"
    t.integer "onsdagminute"
    t.integer "torsdaghour"
    t.integer "torsdagminute"
    t.integer "fredaghour"
    t.integer "fredagminute"
    t.integer "lørdaghour"
    t.integer "lørdagminute"
    t.integer "søndaghour"
    t.integer "søndagminute"
    t.integer "aldersgrense"
    t.string "adresse"
    t.string "postnr"
    t.string "poststed"
    t.string "epost"
    t.string "telefonnr"
    t.integer "singleton_guard"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "mandagclosinghour"
    t.integer "mandagclosingminute"
    t.integer "tirsdagclosinghour"
    t.integer "tirsdagclosingminute"
    t.integer "onsdagclosinghour"
    t.integer "onsdagclosingminute"
    t.integer "torsdagclosinghour"
    t.integer "torsdagclosingminute"
    t.integer "fredagclosinghour"
    t.integer "fredagclosingminute"
    t.integer "lørdagclosinghour"
    t.integer "lørdagclosingminute"
    t.integer "søndagclosinghour"
    t.integer "søndagclosingminute"
    t.index ["singleton_guard"], name: "index_globalsettings_on_singleton_guard", unique: true
  end

  create_table "omosses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.text "ingress"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "singleton_guard"
    t.index ["singleton_guard"], name: "index_omosses_on_singleton_guard", unique: true
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "email"
    t.boolean "admin", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "remember_digest"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "drinks", "categories"
end
