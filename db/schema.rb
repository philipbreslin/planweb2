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

ActiveRecord::Schema.define(:version => 20130803145537) do

  create_table "planning_applications", :force => true do |t|
    t.integer  "user_id"
    t.string   "planning_authority"
    t.string   "planning_authority_reference"
    t.string   "applicant_name"
    t.string   "application_type"
    t.text     "location_address"
    t.date     "lodged_with_planning_authority_on"
    t.text     "description"
    t.date     "validated_by_planning_authority_on"
    t.date     "decision_expected_on"
    t.date     "decision_received_on"
    t.string   "decision"
    t.date     "extension_requested_on"
    t.date     "extension_granted_on"
    t.string   "url_to_observations"
    t.integer  "number_of_observations"
    t.date     "commencement_notice_received_by_planning_authority_on"
    t.date     "commenced_on"
    t.datetime "created_at",                                            :null => false
    t.datetime "updated_at",                                            :null => false
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.boolean  "admin",           :default => false
    t.string   "password_digest"
    t.string   "remember_token"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

  create_table "web_design_assignments", :force => true do |t|
    t.integer  "user_id"
    t.text     "job_reference"
    t.string   "project_stage"
    t.date     "issued_on"
    t.date     "completion_due_on"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

end
