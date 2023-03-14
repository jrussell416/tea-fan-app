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

ActiveRecord::Schema.define(version: 2023_03_01_002839) do

  create_table "favorite_recipes", force: :cascade do |t|
    t.integer "recipe_id"
    t.integer "user_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.string "recipe_type"
    t.text "instructions"
    t.string "recipe_url"
    t.string "submitted_by"
    t.integer "user_id"
  end

  create_table "shops", force: :cascade do |t|
    t.string "name"
    t.string "shop_url"
    t.string "street_address"
    t.string "city"
    t.string "country"
    t.integer "user_id"
  end

  create_table "stashes", force: :cascade do |t|
    t.string "tea_name"
    t.string "tea_type"
    t.string "purchased_at"
    t.string "stash_amount"
    t.text "notes"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.string "email"
    t.string "password_digest"
    t.boolean "admin", default: false, null: false
  end

end
