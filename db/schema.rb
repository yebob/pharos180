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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140722000002) do

  create_table "areas", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "levels", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "position_skills", force: true do |t|
    t.integer  "position_id"
    t.integer  "level_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "position_skills", ["level_id"], name: "index_position_skills_on_level_id"
  add_index "position_skills", ["position_id"], name: "index_position_skills_on_position_id"

  create_table "positions", force: true do |t|
    t.string   "name"
    t.integer  "area_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "specialization_id"
  end

  add_index "positions", ["area_id"], name: "index_positions_on_area_id"
  add_index "positions", ["specialization_id"], name: "index_positions_on_specialization_id"

  create_table "skill_categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skill_levels", force: true do |t|
    t.integer  "level_id"
    t.integer  "skill_id"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "skill_levels", ["level_id"], name: "index_skill_levels_on_level_id"
  add_index "skill_levels", ["skill_id"], name: "index_skill_levels_on_skill_id"

  create_table "skills", force: true do |t|
    t.string   "name"
    t.integer  "skill_category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "skills", ["skill_category_id"], name: "index_skills_on_skill_category_id"

  create_table "specialization_categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "specialization_skills", force: true do |t|
    t.integer  "specialization_id"
    t.integer  "skill_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "specialization_skills", ["skill_id"], name: "index_specialization_skills_on_skill_id"
  add_index "specialization_skills", ["specialization_id"], name: "index_specialization_skills_on_specialization_id"

  create_table "specialization_weights", force: true do |t|
    t.integer  "weight"
    t.integer  "specialization_id"
    t.integer  "skill_category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "specialization_weights", ["skill_category_id"], name: "index_specialization_weights_on_skill_category_id"
  add_index "specialization_weights", ["specialization_id"], name: "index_specialization_weights_on_specialization_id"

  create_table "specializations", force: true do |t|
    t.string   "name"
    t.integer  "specialization_category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "specializations", ["specialization_category_id"], name: "index_specializations_on_specialization_category_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.integer  "position_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["position_id"], name: "index_users_on_position_id"

end
