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

ActiveRecord::Schema.define(version: 20170802083504) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.date "date"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "memberslist", default: ""
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "character_name"
    t.string "rank", default: "Recruit"
    t.string "head", default: "Beginner's Mercenary Hood"
    t.string "armor", default: "Beginner's Mercenary Jacket"
    t.string "shoes", default: "Beginner's Mercenary Shoes"
    t.string "mainhand", default: "Beginner's Broadsword"
    t.string "offhand", default: "Beginner's Shield"
    t.boolean "admin", default: false
    t.integer "potion", default: 1
    t.integer "food", default: 1
    t.integer "crop", default: 1
    t.integer "herb", default: 1
    t.integer "animal", default: 1
    t.integer "wood", default: 1
    t.integer "fiber", default: 1
    t.integer "stone", default: 1
    t.integer "leather", default: 1
    t.integer "ore", default: 1
    t.integer "woodaxe", default: 1
    t.integer "stonehammer", default: 1
    t.integer "sickle", default: 1
    t.integer "skinningknife", default: 1
    t.integer "pickaxe", default: 1
    t.integer "clothhead", default: 1
    t.integer "clotharmor", default: 1
    t.integer "clothshoes", default: 1
    t.integer "leatherhead", default: 1
    t.integer "leatherarmor", default: 1
    t.integer "leathershoes", default: 1
    t.integer "platehead", default: 1
    t.integer "platearmor", default: 1
    t.integer "plateshoes", default: 1
    t.integer "wepfire", default: 1
    t.integer "wepholy", default: 1
    t.integer "weparcane", default: 1
    t.integer "wepfrost", default: 1
    t.integer "wepcursed", default: 1
    t.integer "weptome", default: 1
    t.integer "wepbow", default: 1
    t.integer "wepspear", default: 1
    t.integer "wepnaturestaff", default: 1
    t.integer "wepdagger", default: 1
    t.integer "wepquarterstaff", default: 1
    t.integer "weptorch", default: 1
    t.integer "wepsword", default: 1
    t.integer "wepbattleaxe", default: 1
    t.integer "wephammer", default: 1
    t.integer "wepmace", default: 1
    t.integer "wepcrossbow", default: 1
    t.integer "wepshield", default: 1
    t.integer "avitempower", default: 1
    t.integer "reaver", default: 1
    t.integer "adventurer", default: 1
    t.datetime "last_active_at"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

end
