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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131110062548) do

  create_table "compound_supplierships", :force => true do |t|
    t.integer  "compound_id"
    t.integer  "supplier_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "compounds", :force => true do |t|
    t.string   "compound_id"
    t.text     "name"
    t.string   "cas"
    t.text     "mf"
    t.decimal  "mw"
    t.text     "structure"
    t.string   "source",      :default => "0"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.text     "seoname"
  end

  create_table "dmfs", :force => true do |t|
    t.string   "dmfno"
    t.string   "status"
    t.string   "type"
    t.date     "sumbmit_date"
    t.string   "holder"
    t.string   "subject"
    t.text     "details"
    t.integer  "compound_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "products", :force => true do |t|
    t.string   "product_id"
    t.string   "name"
    t.string   "casno"
    t.string   "formula"
    t.decimal  "mweight"
    t.text     "structure"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "search_suggestions", :force => true do |t|
    t.string   "term"
    t.integer  "popularity"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "suppliers", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "email"
    t.string   "phone"
    t.string   "fax"
    t.text     "introduction"
    t.string   "image_url"
    t.string   "website"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end
