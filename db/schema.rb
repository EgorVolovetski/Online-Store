# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_04_22_220543) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cart", force: :cascade do |t|
    t.integer "product_id"
    t.integer "quantity"
  end

  create_table "categories", force: :cascade do |t|
    t.string "category_name"
  end

  create_table "customers", force: :cascade do |t|
    t.string "customer_name"
    t.string "email"
    t.string "password", limit: 20
    t.string "address"
    t.string "phone"
  end

  create_table "products", force: :cascade do |t|
    t.string "product_name"
    t.text "description"
    t.decimal "price"
    t.integer "supplier_id"
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "supplier_name"
    t.string "email"
    t.string "password", limit: 20
    t.string "phone"
  end

  add_foreign_key "cart", "products"
  add_foreign_key "products", "suppliers"
end
