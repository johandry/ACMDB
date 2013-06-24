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

ActiveRecord::Schema.define(version: 20130624153701) do

  create_table "contacts", force: true do |t|
    t.integer  "job_id"
    t.integer  "employee_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contacts", ["employee_id"], name: "index_contacts_on_employee_id"
  add_index "contacts", ["job_id"], name: "index_contacts_on_job_id"

  create_table "employees", force: true do |t|
    t.string   "name"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.integer  "team_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "employees", ["team_id"], name: "index_employees_on_team_id"

  create_table "environments", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hostings", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "job_statuses", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "job_types", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jobs", force: true do |t|
    t.string   "name"
    t.integer  "job_type_id"
    t.integer  "box_name_id"
    t.string   "owner"
    t.string   "command"
    t.integer  "machine_id"
    t.string   "permission"
    t.integer  "date_condition"
    t.string   "days_of_week"
    t.string   "start_times"
    t.string   "condition"
    t.string   "short_description"
    t.string   "str_out_file"
    t.string   "str_err_file"
    t.integer  "alarm_if_fail"
    t.float    "avg_runtime_min"
    t.float    "avg_runtime_sec"
    t.string   "max_runtime_min"
    t.integer  "system_id"
    t.text     "description"
    t.integer  "priority_id"
    t.string   "critical"
    t.text     "actions"
    t.text     "notes"
    t.string   "submited_by_id"
    t.string   "integer"
    t.date     "created_on"
    t.string   "modified_by_id"
    t.date     "last_modified_on"
    t.text     "update_log"
    t.integer  "job_status_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "jobs", ["box_name_id"], name: "index_jobs_on_box_name_id"
  add_index "jobs", ["job_status_id"], name: "index_jobs_on_job_status_id"
  add_index "jobs", ["job_type_id"], name: "index_jobs_on_job_type_id"
  add_index "jobs", ["machine_id"], name: "index_jobs_on_machine_id"
  add_index "jobs", ["priority_id"], name: "index_jobs_on_priority_id"
  add_index "jobs", ["system_id"], name: "index_jobs_on_system_id"

  create_table "machine_statuses", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "machine_systems", force: true do |t|
    t.integer  "machine_id"
    t.integer  "system_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "machine_systems", ["machine_id"], name: "index_machine_systems_on_machine_id"
  add_index "machine_systems", ["system_id"], name: "index_machine_systems_on_system_id"

  create_table "machines", force: true do |t|
    t.string   "name"
    t.string   "server_name"
    t.integer  "machine_status_id"
    t.string   "ip"
    t.integer  "os_id"
    t.integer  "environment_id"
    t.integer  "hosting_id"
    t.string   "backup_server"
    t.string   "description"
    t.text     "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "machines", ["environment_id"], name: "index_machines_on_environment_id"
  add_index "machines", ["hosting_id"], name: "index_machines_on_hosting_id"
  add_index "machines", ["machine_status_id"], name: "index_machines_on_machine_status_id"
  add_index "machines", ["os_id"], name: "index_machines_on_os_id"

  create_table "os", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "priorities", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "systems", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "system_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "teams", ["system_id"], name: "index_teams_on_system_id"

end
