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

ActiveRecord::Schema.define(version: 2020_08_20_235148) do

  create_table "academics", force: :cascade do |t|
    t.string "institution"
    t.string "course"
    t.date "start_date"
    t.date "end_date"
    t.integer "done"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "career_infos", force: :cascade do |t|
    t.string "company"
    t.string "work_function"
    t.date "start_date"
    t.date "end_date"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string "school"
    t.string "name"
    t.text "description"
    t.date "done_when"
    t.string "certificate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "languages", force: :cascade do |t|
    t.string "institution"
    t.string "language"
    t.date "start_date"
    t.date "end_date"
    t.string "level"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "personal_infos", force: :cascade do |t|
    t.string "name"
    t.string "nickname"
    t.date "birthday"
    t.string "gender"
    t.string "country"
    t.string "state"
    t.string "city"
    t.string "neighborhood"
    t.string "street"
    t.string "number"
    t.string "zipcode"
    t.string "phone_a"
    t.string "phone_b"
    t.string "email"
    t.string "relationship"
    t.text "focus"
    t.string "greeting"
    t.text "text_hook"
    t.string "github"
    t.string "gitlab"
    t.string "linkedin"
    t.text "footer_text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "url"
    t.string "image_url"
    t.string "repo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "thumb_url"
  end

  create_table "tools", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "visitors", force: :cascade do |t|
    t.string "ip"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
