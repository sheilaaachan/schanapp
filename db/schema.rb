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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130916200101) do

  create_table "attachments", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "type"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "project_photos", :force => true do |t|
    t.string   "project_photo_file_name"
    t.string   "project_photo_content_type"
    t.integer  "project_photo_file_size"
    t.integer  "project_id"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "projects", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string   "course"
    t.string   "collaborators"
    t.string   "role"
    t.string   "skills"
    t.string   "type"
    t.integer  "work_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "works", :force => true do |t|
    t.datetime "start_date"
    t.datetime "end_date"
    t.string   "company"
    t.string   "team"
    t.string   "role"
    t.string   "location"
    t.text     "description"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

end
