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

ActiveRecord::Schema.define(:version => 20121204135845) do

  create_table "appreciations", :force => true do |t|
    t.integer  "value"
    t.integer  "user_id"
    t.integer  "step_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "appreciations", ["step_id"], :name => "index_appreciations_on_step_id"
  add_index "appreciations", ["user_id"], :name => "index_appreciations_on_user_id"

  create_table "comments", :force => true do |t|
    t.string   "body"
    t.integer  "user_id"
    t.integer  "step_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "comments", ["step_id"], :name => "index_comments_on_step_id"
  add_index "comments", ["user_id"], :name => "index_comments_on_user_id"

  create_table "steps", :force => true do |t|
    t.integer  "parent_id"
    t.string   "title"
    t.text     "body"
    t.string   "step_type"
    t.integer  "appreciation_counter", :default => 0, :null => false
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
    t.integer  "user_id"
  end

  add_index "steps", ["user_id"], :name => "index_steps_on_user_id"

  create_table "tags", :force => true do |t|
    t.string   "tag"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
