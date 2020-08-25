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

ActiveRecord::Schema.define(version: 2020_06_17_184125) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.string "colour"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pairs", force: :cascade do |t|
    t.bigint "ingredient_1_id"
    t.bigint "ingredient_2_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "classic", default: 0
    t.integer "different", default: 0
    t.integer "average", default: 0
    t.integer "bad", default: 0
    t.string "overall"
    t.index ["ingredient_1_id"], name: "index_pairs_on_ingredient_1_id"
    t.index ["ingredient_2_id"], name: "index_pairs_on_ingredient_2_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "pair_id"
    t.string "rating"
    t.string "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pair_id"], name: "index_reviews_on_pair_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "pairs", "ingredients", column: "ingredient_1_id"
  add_foreign_key "pairs", "ingredients", column: "ingredient_2_id"
  add_foreign_key "reviews", "pairs"
  add_foreign_key "reviews", "users"
end
