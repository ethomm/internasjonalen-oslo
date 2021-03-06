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

ActiveRecord::Schema.define(version: 20180319135656) do

 # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "barimages", force: :cascade do |t|
    t.bigint "bar_id"
    t.text "image_url"
    t.string "fotograf"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bar_id"], name: "index_barimages_on_bar_id"
  end

  create_table "bars", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.text "seo_description"
    t.text "top_image"
  end

  create_table "bookingimages", force: :cascade do |t|
    t.string "image"
    t.string "description"
    t.string "fotograf"
    t.bigint "bookings_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bookings_id"], name: "index_bookingimages_on_bookings_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "seodescription"
  end

  create_table "contactpeople", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "telefon"
    t.boolean "showtelefon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "stilling", default: 0
  end

  create_table "frontpage_images", force: :cascade do |t|
    t.text "image_url"
    t.string "fotograf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status"
  end

  create_table "globalsettings", force: :cascade do |t|
    t.boolean "mandag"
    t.boolean "tirsdag"
    t.boolean "onsdag"
    t.boolean "torsdag"
    t.boolean "fredag"
    t.boolean "l??rdag"
    t.boolean "s??ndag"
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
    t.integer "l??rdaghour"
    t.integer "l??rdagminute"
    t.integer "s??ndaghour"
    t.integer "s??ndagminute"
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
    t.integer "l??rdagclosinghour"
    t.integer "l??rdagclosingminute"
    t.integer "s??ndagclosinghour"
    t.integer "s??ndagclosingminute"
    t.string "slogan"
    t.index ["singleton_guard"], name: "index_globalsettings_on_singleton_guard", unique: true
  end

  create_table "omosses", force: :cascade do |t|
    t.string "title"
    t.text "ingress"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "singleton_guard"
    t.index ["singleton_guard"], name: "index_omosses_on_singleton_guard", unique: true
  end

  create_table "roles", force: :cascade do |t|
    t.string "title"
    t.bigint "contactperson_id"
    t.bigint "globalsetting_id", default: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "stilling", default: 0
    t.index ["contactperson_id"], name: "index_roles_on_contactperson_id"
    t.index ["globalsetting_id"], name: "index_roles_on_globalsetting_id"
  end

  create_table "tekniskcategories", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tekniskitems", force: :cascade do |t|
    t.string "title"
    t.integer "antall"
    t.bigint "tekniskcategory_id"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tekniskcategory_id"], name: "index_tekniskitems_on_tekniskcategory_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.boolean "admin", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "remember_digest"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "barimages", "bars"
  add_foreign_key "bookingimages", "bookings", column: "bookings_id"
  add_foreign_key "roles", "contactpeople"
  add_foreign_key "roles", "globalsettings"
  add_foreign_key "tekniskitems", "tekniskcategories"
end
