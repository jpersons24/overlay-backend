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

ActiveRecord::Schema.define(version: 2021_02_25_172530) do

  create_table "blogs", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_blogs_on_user_id"
  end

  create_table "favorites_lists", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "stories_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["stories_id"], name: "index_favorites_lists_on_stories_id"
    t.index ["user_id"], name: "index_favorites_lists_on_user_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "sport_key"
    t.string "sport_nice"
    t.string "teams"
    t.string "home_team"
    t.string "commence_time"
    t.string "sites"
    t.integer "sites_count"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "leagues", force: :cascade do |t|
    t.string "name"
    t.string "sport"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "content"
    t.string "likes"
    t.integer "user_id", null: false
    t.integer "game_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_id"], name: "index_posts_on_game_id"
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "stories", force: :cascade do |t|
    t.string "source"
    t.string "author"
    t.string "title"
    t.string "description"
    t.string "url"
    t.string "url_to_image"
    t.string "published_at"
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.integer "game_id", null: false
    t.integer "league_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_id"], name: "index_teams_on_game_id"
    t.index ["league_id"], name: "index_teams_on_league_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "profile_img"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "blogs", "users"
  add_foreign_key "favorites_lists", "stories", column: "stories_id"
  add_foreign_key "favorites_lists", "users"
  add_foreign_key "posts", "games"
  add_foreign_key "posts", "users"
  add_foreign_key "teams", "games"
  add_foreign_key "teams", "leagues"
end
