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

ActiveRecord::Schema.define(version: 20180524230410) do

  create_table "projects", force: :cascade do |t|
    t.string "projectName"
    t.date "projectStartDate"
    t.date "projectEndDate"
    t.text "projectInfo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "current"
    t.string "client"
  end

  create_table "skill_groups", force: :cascade do |t|
    t.string "skillType"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["skillType"], name: "index_skill_groups_on_skillType"
  end

  create_table "skills", force: :cascade do |t|
    t.string "skillName"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "skill_group_id"
    t.index ["skill_group_id"], name: "index_skills_on_skill_group_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "provider", default: "NO", null: false
    t.string "uid", default: "NO", null: false
    t.string "name"
    t.string "location"
    t.string "image_url"
    t.string "url"
    t.boolean "admin"
    t.index ["provider", "uid"], name: "index_users_on_provider_and_uid", unique: true
    t.index ["provider"], name: "index_users_on_provider"
    t.index ["uid"], name: "index_users_on_uid"
  end

end
