# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_09_02_145420) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "new_project_requests", force: :cascade do |t|
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "projects_id"
    t.bigint "users_id"
    t.index ["projects_id"], name: "index_new_project_requests_on_projects_id"
    t.index ["users_id"], name: "index_new_project_requests_on_users_id"
  end

  create_table "posts", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "projects_id"
    t.bigint "users_id"
    t.index ["projects_id"], name: "index_posts_on_projects_id"
    t.index ["users_id"], name: "index_posts_on_users_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.string "company"
    t.string "url"
    t.string "specialty"
    t.string "employment_type"
    t.string "headline"
    t.text "company_description"
    t.text "job_description"
    t.date "starts_at"
    t.date "ends_at"
    t.float "lat"
    t.float "lng"
    t.string "street"
    t.integer "house_number"
    t.string "house_number_additional"
    t.string "postcode"
    t.string "country"
    t.float "salary"
    t.string "image"
    t.string "image_company_logo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.text "content"
    t.integer "rating"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "users_id"
    t.bigint "projects_id"
    t.index ["projects_id"], name: "index_reviews_on_projects_id"
    t.index ["users_id"], name: "index_reviews_on_users_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.string "title"
    t.string "company"
    t.string "phone_number"
    t.string "profile_image"
    t.string "company_logo"
    t.bigint "projects_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["projects_id"], name: "index_users_on_projects_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "new_project_requests", "projects", column: "projects_id"
  add_foreign_key "new_project_requests", "users", column: "users_id"
  add_foreign_key "posts", "projects", column: "projects_id"
  add_foreign_key "posts", "users", column: "users_id"
  add_foreign_key "reviews", "projects", column: "projects_id"
  add_foreign_key "reviews", "users", column: "users_id"
  add_foreign_key "users", "projects", column: "projects_id"
end
