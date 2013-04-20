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

ActiveRecord::Schema.define(:version => 20130420173830) do

  create_table "customers", :force => true do |t|
    t.string "name"
    t.string "address"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "material_types", :force => true do |t|
    t.string "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "materials", :force => true do |t|
    t.string "name"
    t.integer "material_type_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "quantities", :force => true do |t|
    t.integer "sales_order_item_id"
    t.integer "size_id"
    t.integer "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sales_order_items", :force => true do |t|
    t.integer "sales_order_id"
    t.integer "material_id"
    t.string "description"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sales_orders", :force => true do |t|
    t.integer "customer"
    t.date "delivery_date"
    t.integer "salesman_id"
    t.integer "material_type_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "salesmen", :force => true do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sizes", :force => true do |t|
    t.string "name"
    t.integer "material_type_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string "email"
    t.string "crypted_password"
    t.string "password_salt"
    t.string "persistence_token"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
