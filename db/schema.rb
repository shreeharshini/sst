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

ActiveRecord::Schema.define(version: 20161201044232) do

  create_table "account_infos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "account_code"
    t.string   "account_name"
    t.string   "account_type"
    t.string   "no_of_platforms"
    t.string   "admin_first_name"
    t.string   "admin_last_name"
    t.string   "admin_email"
    t.integer  "admin_phone"
    t.date     "contract_start_date"
    t.date     "contract_expiry_date"
    t.string   "activation_code"
    t.string   "activation_status"
    t.string   "created_by"
    t.date     "created_date"
    t.string   "updated_by"
    t.date     "updated_date"
    t.string   "admin_first_name2"
    t.string   "admin_last_name2"
    t.string   "admin_email2"
    t.integer  "admin_phone2"
    t.string   "address_line_1"
    t.string   "address_line2"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.integer  "pincode"
    t.string   "bill_address_1"
    t.string   "bill_address_2"
    t.string   "bill_city"
    t.string   "bill_state"
    t.string   "bill_country"
    t.integer  "bill_pin_code"
    t.integer  "is_same"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "account_platforms", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "account_id"
    t.integer  "platform_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "accounts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "month"
    t.string   "created_by"
    t.string   "updated_by"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.date     "contract_sign_on"
    t.integer  "number_of_platforms"
    t.string   "activation_status"
    t.string   "account_code"
    t.integer  "user_id"
  end

  create_table "fyears", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "import_data", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.string   "attachment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "platform_reports", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "platform_id"
    t.integer  "report_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "platforms", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "abbrev"
    t.string   "name"
    t.string   "created_by"
    t.string   "updated_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plats", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "created_by"
    t.string   "updated_by"
    t.string   "platformname"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "reports", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "description"
    t.string   "format"
    t.string   "created_by"
    t.string   "updated_by"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "source_reports_mappings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "report_id"
    t.integer  "platform_id"
    t.integer  "month"
    t.integer  "year"
    t.integer  "account_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "selectpid"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "role"
    t.string   "first_name"
    t.string   "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "year_top_journals", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "institution_code"
    t.string   "journal_title"
    t.integer  "YTD"
    t.integer  "Jan_Stats"
    t.integer  "Feb_Stats"
    t.integer  "Mar_Stats"
    t.integer  "Apr_Stats"
    t.integer  "May_Stats"
    t.integer  "Jun_Stats"
    t.integer  "Jul_Stats"
    t.integer  "Aug_Stats"
    t.integer  "Sept_Stats"
    t.integer  "Oct_Stats"
    t.integer  "Nov_Stats"
    t.integer  "Dec_Stats"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "year_trends", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "institution_code"
    t.string   "processing_month"
    t.integer  "processing_year"
    t.integer  "Jan_Stats"
    t.integer  "Feb_Stats"
    t.integer  "Mar_Stats"
    t.integer  "Apr_Stats"
    t.integer  "May_Stats"
    t.integer  "Jun_Stats"
    t.integer  "Jul_Stats"
    t.integer  "Aug_Stats"
    t.integer  "Sept_Stats"
    t.integer  "Oct_Stats"
    t.integer  "Nov_Stats"
    t.integer  "Dec_Stats"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "year_usages", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "Institution_Code"
    t.string   "Report_Type"
    t.integer  "YTD"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end
