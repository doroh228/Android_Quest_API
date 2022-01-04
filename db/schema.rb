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

ActiveRecord::Schema.define(version: 2022_01_04_160801) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "game_statuses", force: :cascade do |t|
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "games", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "game_status_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_status_id"], name: "index_games_on_game_status_id"
    t.index ["user_id"], name: "index_games_on_user_id"
  end

  create_table "players_in_games", id: false, force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "game_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_id"], name: "index_players_in_games_on_game_id"
    t.index ["user_id"], name: "index_players_in_games_on_user_id"
  end

  create_table "questions", force: :cascade do |t|
    t.text "question_text"
    t.text "answer"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "questions_in_games", id: false, force: :cascade do |t|
    t.bigint "question_id"
    t.bigint "game_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_id"], name: "index_questions_in_games_on_game_id"
    t.index ["question_id"], name: "index_questions_in_games_on_question_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "sur_name"
    t.bigint "role_id"
    t.string "login"
    t.text "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["role_id"], name: "index_users_on_role_id"
  end

  add_foreign_key "games", "game_statuses"
  add_foreign_key "games", "users"
  add_foreign_key "players_in_games", "games"
  add_foreign_key "players_in_games", "users"
  add_foreign_key "questions_in_games", "games"
  add_foreign_key "questions_in_games", "questions"
  add_foreign_key "users", "roles"
end
