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

ActiveRecord::Schema.define(version: 20170415055932) do

  create_table "books", force: :cascade do |t|
    t.string   "author",                                 null: false
    t.string   "title",                                  null: false
    t.date     "published_on",                           null: false
    t.string   "publisher",                              null: false
    t.string   "language",                               null: false
    t.string   "binding_format"
    t.string   "isbn",                                   null: false
    t.decimal  "price",          precision: 8, scale: 2
    t.string   "dewey_code"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.index ["author"], name: "index_books_on_author"
    t.index ["dewey_code"], name: "index_books_on_dewey_code"
    t.index ["isbn"], name: "index_books_on_isbn", unique: true
    t.index ["title"], name: "index_books_on_title"
  end

  create_table "readers", force: :cascade do |t|
    t.string   "email",                        null: false
    t.string   "first_name",                   null: false
    t.string   "last_name",                    null: false
    t.date     "dob",                          null: false
    t.string   "phone"
    t.string   "address_line1",                null: false
    t.string   "address_line2"
    t.string   "city",                         null: false
    t.string   "state",                        null: false
    t.string   "zip",                          null: false
    t.boolean  "active",        default: true, null: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["email"], name: "index_readers_on_email"
    t.index ["last_name"], name: "index_readers_on_last_name"
    t.index ["phone"], name: "index_readers_on_phone"
  end

end
