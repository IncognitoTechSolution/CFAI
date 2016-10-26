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

ActiveRecord::Schema.define(version: 20161026015324) do

  create_table "address_types", force: :cascade do |t|
    t.string   "type",       limit: 4000
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "candidates", force: :cascade do |t|
    t.integer  "prefix_id",        limit: 4
    t.integer  "office_held_id",   limit: 4
    t.integer  "office_sought_id", limit: 4
    t.string   "firstname",        limit: 4000
    t.string   "mi",               limit: 4000
    t.string   "lastname",         limit: 4000
    t.string   "alias",            limit: 4000
    t.string   "suffix",           limit: 4000
    t.boolean  "addresschange"
    t.string   "address",          limit: 4000
    t.string   "apptsuitenum",     limit: 4000
    t.string   "city",             limit: 4000
    t.integer  "state_id",         limit: 4
    t.string   "zipcode",          limit: 4000
    t.string   "phone",            limit: 4000
    t.string   "ext",              limit: 4000
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "coh_payments", force: :cascade do |t|
    t.integer  "report_id",               limit: 4
    t.string   "entity_id",               limit: 4000
    t.integer  "expenditure_category_id", limit: 4
    t.integer  "candidate_id",            limit: 4
    t.integer  "travel_id",               limit: 4
    t.date     "date"
    t.float    "amount"
    t.text     "description",             limit: 2147483647
    t.float    "cptotal"
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

  create_table "coversheets", force: :cascade do |t|
    t.integer  "report_id",        limit: 4
    t.integer  "treasurer_id",     limit: 4
    t.string   "periodbegin",      limit: 4000
    t.string   "periodend",        limit: 4000
    t.string   "electiondate",     limit: 4000
    t.integer  "election_type_id", limit: 4
    t.integer  "office_held_id",   limit: 4
    t.integer  "office_sought_id", limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "credits", force: :cascade do |t|
    t.integer  "report_id",      limit: 4
    t.integer  "transaction_id", limit: 4
    t.integer  "entity_id",      limit: 4
    t.date     "date"
    t.float    "amount"
    t.text     "description",    limit: 2147483647
    t.boolean  "return"
    t.float    "returntotal"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "election_types", force: :cascade do |t|
    t.string   "category",   limit: 4000
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "entities", force: :cascade do |t|
    t.integer  "entity_type_id", limit: 4
    t.integer  "prefix_id",      limit: 4
    t.string   "firstname",      limit: 4000
    t.string   "mi",             limit: 4000
    t.string   "lastname",       limit: 4000
    t.string   "suffix",         limit: 4000
    t.string   "address",        limit: 4000
    t.string   "addresstwo",     limit: 4000
    t.string   "suite",          limit: 4000
    t.integer  "state_id",       limit: 4
    t.string   "city",           limit: 4000
    t.string   "zipcode",        limit: 4000
    t.string   "occupation",     limit: 4000
    t.string   "comporg",        limit: 4000
    t.boolean  "addresschange"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "entity_types", force: :cascade do |t|
    t.string   "type",       limit: 4000
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "expend_types", force: :cascade do |t|
    t.string   "type",       limit: 4000
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "expenditure_categories", force: :cascade do |t|
    t.string   "category",   limit: 4000
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "expenditures", force: :cascade do |t|
    t.integer  "report_id",         limit: 4
    t.integer  "entity_id",         limit: 4
    t.integer  "transaction_id",    limit: 4
    t.integer  "payment_method_id", limit: 4
    t.integer  "travel_id",         limit: 4
    t.integer  "candidate_id",      limit: 4
    t.integer  "expen_category_id", limit: 4
    t.integer  "expend_type_id",    limit: 4
    t.date     "date"
    t.float    "amount"
    t.text     "purpose",           limit: 2147483647
    t.float    "expendituretotal"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  create_table "filer_types", force: :cascade do |t|
    t.string   "type",       limit: 4000
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "filers", force: :cascade do |t|
    t.integer  "filer_type_id",        limit: 4
    t.integer  "state_id",             limit: 4
    t.string   "firstname",            limit: 4000
    t.string   "mi",                   limit: 4000
    t.string   "lastname",             limit: 4000
    t.string   "committee",            limit: 4000
    t.string   "address",              limit: 4000
    t.string   "addresstwo",           limit: 4000
    t.string   "suite",                limit: 4000
    t.string   "city",                 limit: 4000
    t.string   "zipcode",              limit: 4000
    t.string   "phone",                limit: 4000
    t.string   "ext",                  limit: 4000
    t.string   "email",                limit: 4000
    t.string   "releasepasswordto",    limit: 4000
    t.string   "emailreleasepassword", limit: 4000
    t.date     "receivedate"
    t.boolean  "active"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "investment_purchases", force: :cascade do |t|
    t.integer  "report_id",      limit: 4
    t.integer  "entity_id",      limit: 4
    t.integer  "expend_type_id", limit: 4
    t.integer  "transaction_id", limit: 4
    t.integer  "candidate_id",   limit: 4
    t.date     "date"
    t.float    "amount"
    t.text     "description",    limit: 2147483647
    t.float    "iptotal"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "loans", force: :cascade do |t|
    t.integer  "report_id",        limit: 4
    t.integer  "transaction_id",   limit: 4
    t.integer  "entity_id",        limit: 4
    t.integer  "candidate_id",     limit: 4
    t.date     "date"
    t.boolean  "outofstatepac"
    t.string   "pacid",            limit: 4000
    t.float    "amount"
    t.decimal  "interestrate",                        precision: 18, scale: 0
    t.decimal  "maturitydate",                        precision: 18, scale: 0
    t.text     "description",      limit: 2147483647
    t.boolean  "personalfund"
    t.float    "amountguaranteed"
    t.float    "loantotal"
    t.datetime "created_at",                                                   null: false
    t.datetime "updated_at",                                                   null: false
  end

  create_table "monetary_contributions", force: :cascade do |t|
    t.integer  "report_id",      limit: 4
    t.integer  "transaction_id", limit: 4
    t.integer  "entity_id",      limit: 4
    t.integer  "entity_type_id", limit: 4
    t.integer  "candidate_id",   limit: 4
    t.boolean  "outofstatepac"
    t.string   "pacid",          limit: 4000
    t.date     "date"
    t.float    "amount"
    t.text     "description",    limit: 2147483647
    t.float    "mctotal"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "non_monetary_contributions", force: :cascade do |t|
    t.integer  "report_id",      limit: 4
    t.integer  "transaction_id", limit: 4
    t.integer  "entity_id",      limit: 4
    t.integer  "travel_id",      limit: 4
    t.integer  "candidate_id",   limit: 4
    t.date     "date"
    t.boolean  "outofstatepac"
    t.string   "pacid",          limit: 4000
    t.float    "amount"
    t.text     "description",    limit: 2147483647
    t.float    "nmctotal"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "non_political_expenditures", force: :cascade do |t|
    t.integer  "report_id",               limit: 4
    t.integer  "entity_id",               limit: 4
    t.integer  "expenditure_category_id", limit: 4
    t.integer  "transaction_id",          limit: 4
    t.date     "date"
    t.text     "purpose",                 limit: 2147483647
    t.float    "amount"
    t.float    "npetotal"
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

  create_table "office_helds", force: :cascade do |t|
    t.string   "category",   limit: 4000
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "office_soughts", force: :cascade do |t|
    t.string   "category",   limit: 4000
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "payment_methods", force: :cascade do |t|
    t.string   "peymentmethod", limit: 4000
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "pledges", force: :cascade do |t|
    t.integer  "report_id",      limit: 4
    t.integer  "transaction_id", limit: 4
    t.integer  "entity_id",      limit: 4
    t.date     "date"
    t.boolean  "outofstatepac"
    t.string   "pacid",          limit: 4000
    t.float    "amount"
    t.text     "description",    limit: 2147483647
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "prefixes", force: :cascade do |t|
    t.string   "prefix",     limit: 4000
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "report_subtotals", force: :cascade do |t|
    t.integer  "report_id",                     limit: 4
    t.integer  "coh_payment_id",                limit: 4
    t.integer  "credit_id",                     limit: 4
    t.integer  "expenditure_category_id",       limit: 4
    t.integer  "expenditure_id",                limit: 4
    t.integer  "investment_purchase_id",        limit: 4
    t.integer  "loan_id",                       limit: 4
    t.integer  "monetary_contribution_id",      limit: 4
    t.integer  "non_monetary_contribution_id",  limit: 4
    t.integer  "non_political_expenditure_id",  limit: 4
    t.integer  "pledge_id",                     limit: 4
    t.integer  "unpaid_incurred_obligation_id", limit: 4
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  create_table "report_types", force: :cascade do |t|
    t.string   "type",       limit: 4000
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "reports", force: :cascade do |t|
    t.integer  "report_type_id", limit: 4
    t.string   "submitdate",     limit: 4000
    t.integer  "filer_id",       limit: 4
    t.string   "filename",       limit: 4000
    t.string   "origin",         limit: 4000
    t.string   "campaignyear",   limit: 4000
    t.boolean  "ontime"
    t.string   "signature",      limit: 4000
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "states", force: :cascade do |t|
    t.string   "state",      limit: 4000
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.string   "type",       limit: 4000
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "travel_schedules", force: :cascade do |t|
    t.string   "name",       limit: 4000
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "travelers", force: :cascade do |t|
    t.integer  "travel_id",  limit: 4
    t.string   "firstname",  limit: 4000
    t.string   "lastname",   limit: 4000
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "travels", force: :cascade do |t|
    t.integer  "report_id",          limit: 4
    t.integer  "entity_id",          limit: 4
    t.integer  "candidate_id",       limit: 4
    t.integer  "travel_schedule_id", limit: 4
    t.text     "purpose",            limit: 2147483647
    t.date     "travelbegin"
    t.date     "travelend"
    t.string   "transportation",     limit: 4000
    t.string   "departureloc",       limit: 4000
    t.string   "destinationloc",     limit: 4000
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "treasurers", force: :cascade do |t|
    t.integer  "address_type_id", limit: 4
    t.integer  "prefix_id",       limit: 4
    t.string   "firstname",       limit: 4000
    t.string   "mi",              limit: 4000
    t.string   "lastname",        limit: 4000
    t.string   "alias",           limit: 4000
    t.string   "suffix",          limit: 4000
    t.boolean  "addresschange"
    t.string   "address",         limit: 4000
    t.string   "suite",           limit: 4000
    t.string   "city",            limit: 4000
    t.integer  "state_id",        limit: 4
    t.string   "zipcode",         limit: 4000
    t.string   "phone",           limit: 4000
    t.string   "ext",             limit: 4000
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "unpaid_incurred_obligations", force: :cascade do |t|
    t.integer  "report_id",               limit: 4
    t.integer  "entity_id",               limit: 4
    t.integer  "transaction_id",          limit: 4
    t.integer  "expenditure_category_id", limit: 4
    t.integer  "candidate_id",            limit: 4
    t.integer  "travel_id",               limit: 4
    t.integer  "expend_type_id",          limit: 4
    t.text     "description",             limit: 2147483647
    t.date     "date"
    t.float    "amount"
    t.float    "uitotal"
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

end
