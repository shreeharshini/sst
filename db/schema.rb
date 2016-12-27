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

ActiveRecord::Schema.define(version: 20161220114830) do

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
    t.integer  "account_id"
  end

  create_table "account_platform_details", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "account_id"
    t.integer  "platform_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
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

  create_table "additional_users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password"
    t.string   "role"
  end

  create_table "admins", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
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
    t.index ["email"], name: "index_admins_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree
  end

  create_table "archive_uploaders", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "counter_and_customs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.integer  "year"
    t.string   "description"
    t.string   "report_type"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "counter_and_customs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.integer  "year"
    t.string   "description"
    t.string   "report_type"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "create_additional_users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "role"
  end

  create_table "create_addtional_users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
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
    t.index ["email"], name: "index_create_addtional_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_create_addtional_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "data_libraries", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "institution_code"
    t.string   "pub_code"
    t.string   "journal_title"
    t.string   "print_issn"
    t.string   "online_issn"
    t.string   "report_type"
    t.integer  "processing_month"
    t.integer  "processing_year"
    t.integer  "ytd"
    t.string   "isbn"
    t.string   "issn"
    t.string   "platform_name"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

<<<<<<< HEAD
=======
  create_table "db1s", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "Database_name"
    t.string   "Platform"
    t.string   "Publisher"
    t.string   "User_Activity"
    t.string   "Report_Type"
    t.integer  "Jan_2013"
    t.integer  "Feb_2013"
    t.integer  "Mar_2013"
    t.integer  "Apr_2013"
    t.integer  "May_2013"
    t.integer  "Jun_2013"
    t.integer  "Jul_2013"
    t.integer  "Aug_2013"
    t.integer  "Sep_2013"
    t.integer  "Oct_2013"
    t.integer  "Nov_2013"
    t.integer  "Dec_2013"
    t.integer  "Jan_2014"
    t.integer  "Feb_2014"
    t.integer  "Mar_2014"
    t.integer  "Apr_2014"
    t.integer  "May_2014"
    t.integer  "Jun_2014"
    t.integer  "Jul_2014"
    t.integer  "Aug_2014"
    t.integer  "Sep_2014"
    t.integer  "Oct_2014"
    t.integer  "Nov_2014"
    t.integer  "Dec_2014"
    t.integer  "Jan_2015"
    t.integer  "Feb_2015"
    t.integer  "Mar_2015"
    t.integer  "Apr_2015"
    t.integer  "May_2015"
    t.integer  "Jun_2015"
    t.integer  "Jul_2015"
    t.integer  "Aug_2015"
    t.integer  "Sep_2015"
    t.integer  "Oct_2015"
    t.integer  "Nov_2015"
    t.integer  "Dec_2015"
    t.integer  "Jan_2016"
    t.integer  "Feb_2016"
    t.integer  "Mar_2016"
    t.integer  "Apr_2016"
    t.integer  "May_2016"
    t.integer  "Jun_2016"
    t.integer  "Jul_2016"
    t.integer  "Aug_2016"
    t.integer  "Sep_2016"
    t.integer  "Oct_2016"
    t.integer  "Nov_2016"
    t.integer  "Dec_2016"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "db2s", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "Database_name"
    t.string   "Platform"
    t.string   "Publisher"
    t.string   "User_Activity"
    t.string   "Report_Type"
    t.integer  "Jan_2013"
    t.integer  "Feb_2013"
    t.integer  "Mar_2013"
    t.integer  "Apr_2013"
    t.integer  "May_2013"
    t.integer  "Jun_2013"
    t.integer  "Jul_2013"
    t.integer  "Aug_2013"
    t.integer  "Sep_2013"
    t.integer  "Oct_2013"
    t.integer  "Nov_2013"
    t.integer  "Dec_2013"
    t.integer  "Jan_2014"
    t.integer  "Feb_2014"
    t.integer  "Mar_2014"
    t.integer  "Apr_2014"
    t.integer  "May_2014"
    t.integer  "Jun_2014"
    t.integer  "Jul_2014"
    t.integer  "Aug_2014"
    t.integer  "Sep_2014"
    t.integer  "Oct_2014"
    t.integer  "Nov_2014"
    t.integer  "Dec_2014"
    t.integer  "Jan_2015"
    t.integer  "Feb_2015"
    t.integer  "Mar_2015"
    t.integer  "Apr_2015"
    t.integer  "May_2015"
    t.integer  "Jun_2015"
    t.integer  "Jul_2015"
    t.integer  "Aug_2015"
    t.integer  "Sep_2015"
    t.integer  "Oct_2015"
    t.integer  "Nov_2015"
    t.integer  "Dec_2015"
    t.integer  "Jan_2016"
    t.integer  "Feb_2016"
    t.integer  "Mar_2016"
    t.integer  "Apr_2016"
    t.integer  "May_2016"
    t.integer  "Jun_2016"
    t.integer  "Jul_2016"
    t.integer  "Aug_2016"
    t.integer  "Sep_2016"
    t.integer  "Oct_2016"
    t.integer  "Nov_2016"
    t.integer  "Dec_2016"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "dynamicreports", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

>>>>>>> e595b2137ea61d9ff74f3006451680361a85cb3f
  create_table "fyears", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "generated_reports", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.integer  "report_id"
    t.string   "status"
    t.integer  "year"
    t.integer  "is_generated"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "import_data", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.string   "attachment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "platform_report_details", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "platform_id"
    t.integer  "report_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "platform_report_details", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "platform_id"
    t.integer  "report_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
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

<<<<<<< HEAD

=======
>>>>>>> e595b2137ea61d9ff74f3006451680361a85cb3f
  create_table "plats", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "created_by"
    t.string   "updated_by"
    t.string   "platformname"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
<<<<<<< HEAD
=======
  end
>>>>>>> e595b2137ea61d9ff74f3006451680361a85cb3f

  create_table "pr1s", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "Platform"
    t.string   "Publisher"
    t.string   "User_Activity"
    t.string   "Report_Type"
    t.integer  "Jan_2013"
    t.integer  "Feb_2013"
    t.integer  "Mar_2013"
    t.integer  "Apr_2013"
    t.integer  "May_2013"
    t.integer  "Jun_2013"
    t.integer  "Jul_2013"
    t.integer  "Aug_2013"
    t.integer  "Sep_2013"
    t.integer  "Oct_2013"
    t.integer  "Nov_2013"
    t.integer  "Dec_2013"
    t.integer  "Jan_2014"
    t.integer  "Feb_2014"
    t.integer  "Mar_2014"
    t.integer  "Apr_2014"
    t.integer  "May_2014"
    t.integer  "Jun_2014"
    t.integer  "Jul_2014"
    t.integer  "Aug_2014"
    t.integer  "Sep_2014"
    t.integer  "Oct_2014"
    t.integer  "Nov_2014"
    t.integer  "Dec_2014"
    t.integer  "Jan_2015"
    t.integer  "Feb_2015"
    t.integer  "Mar_2015"
    t.integer  "Apr_2015"
    t.integer  "May_2015"
    t.integer  "Jun_2015"
    t.integer  "Jul_2015"
    t.integer  "Aug_2015"
    t.integer  "Sep_2015"
    t.integer  "Oct_2015"
    t.integer  "Nov_2015"
    t.integer  "Dec_2015"
    t.integer  "Jan_2016"
    t.integer  "Feb_2016"
    t.integer  "Mar_2016"
    t.integer  "Apr_2016"
    t.integer  "May_2016"
    t.integer  "Jun_2016"
    t.integer  "Jul_2016"
    t.integer  "Aug_2016"
    t.integer  "Sep_2016"
    t.integer  "Oct_2016"
    t.integer  "Nov_2016"
    t.integer  "Dec_2016"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false

  end

  create_table "reports", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "description"
    t.string   "format"
    t.string   "created_by"
    t.string   "updated_by"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "report_type"
    t.integer  "year"
  end

  create_table "source_report_mappings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "report_id"
    t.integer  "platform_id"
    t.integer  "month"
    t.integer  "year"
    t.integer  "account_id"
    t.string   "select_pid"
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

  create_table "sushi_partner_accounts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "account_id"
    t.integer  "user_id"
    t.string   "updated_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sushi_partners", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "code"
    t.string   "name"
    t.string   "created_by"
    t.string   "updated_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

<<<<<<< HEAD
  create_table "user_accounts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
=======
  create_table "user_acounts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
>>>>>>> e595b2137ea61d9ff74f3006451680361a85cb3f
    t.integer  "user_id"
    t.integer  "account_id"
    t.integer  "role_id"
    t.string   "updated_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

<<<<<<< HEAD
=======
  create_table "user_roles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.string   "updated_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

>>>>>>> e595b2137ea61d9ff74f3006451680361a85cb3f
  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "role"
    t.string   "first_name"
    t.string   "last_name"
    t.boolean  "is_admin",               default: false
    t.integer  "account_id"
    t.string   "user_type"
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
