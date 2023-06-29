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

ActiveRecord::Schema.define(version: 2023_06_29_062711) do

  create_table "acidities", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "option"
  end

  create_table "acidities_tasting_sheets", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "tasting_sheet_id", null: false
    t.bigint "acidity_id", null: false
    t.index ["acidity_id"], name: "index_acidities_tasting_sheets_on_acidity_id"
    t.index ["tasting_sheet_id"], name: "index_acidities_tasting_sheets_on_tasting_sheet_id"
  end

  create_table "active_storage_attachments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "appearances", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "option"
  end

  create_table "appearances_tasting_sheets", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "tasting_sheet_id", null: false
    t.bigint "appearance_id", null: false
    t.index ["appearance_id"], name: "index_appearances_tasting_sheets_on_appearance_id"
    t.index ["tasting_sheet_id"], name: "index_appearances_tasting_sheets_on_tasting_sheet_id"
  end

  create_table "aroma_elements", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "option"
  end

  create_table "aroma_elements_tasting_sheets", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "tasting_sheet_id", null: false
    t.bigint "aroma_element_id", null: false
    t.index ["aroma_element_id"], name: "index_aroma_elements_tasting_sheets_on_aroma_element_id"
    t.index ["tasting_sheet_id"], name: "index_aroma_elements_tasting_sheets_on_tasting_sheet_id"
  end

  create_table "aroma_impressions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "option"
  end

  create_table "aroma_impressions_tasting_sheets", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "tasting_sheet_id", null: false
    t.bigint "aroma_impression_id", null: false
    t.index ["aroma_impression_id"], name: "index_aroma_impressions_tasting_sheets_on_aroma_impression_id"
    t.index ["tasting_sheet_id"], name: "index_aroma_impressions_tasting_sheets_on_tasting_sheet_id"
  end

  create_table "balances", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "option"
  end

  create_table "balances_tasting_sheets", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "tasting_sheet_id", null: false
    t.bigint "balance_id", null: false
    t.index ["balance_id"], name: "index_balances_tasting_sheets_on_balance_id"
    t.index ["tasting_sheet_id"], name: "index_balances_tasting_sheets_on_tasting_sheet_id"
  end

  create_table "evaluations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "option"
  end

  create_table "evaluations_tasting_sheets", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "tasting_sheet_id", null: false
    t.bigint "evaluation_id", null: false
    t.index ["evaluation_id"], name: "index_evaluations_tasting_sheets_on_evaluation_id"
    t.index ["tasting_sheet_id"], name: "index_evaluations_tasting_sheets_on_tasting_sheet_id"
  end

  create_table "first_impressions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "option"
  end

  create_table "first_impressions_tasting_sheets", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "tasting_sheet_id", null: false
    t.bigint "first_impression_id", null: false
    t.index ["first_impression_id"], name: "index_first_impressions_tasting_sheets_on_first_impression_id"
    t.index ["tasting_sheet_id"], name: "index_first_impressions_tasting_sheets_on_tasting_sheet_id"
  end

  create_table "hues", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "option"
  end

  create_table "hues_tasting_sheets", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "tasting_sheet_id", null: false
    t.bigint "hue_id", null: false
    t.index ["hue_id"], name: "index_hues_tasting_sheets_on_hue_id"
    t.index ["tasting_sheet_id"], name: "index_hues_tasting_sheets_on_tasting_sheet_id"
  end

  create_table "profiles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "sex", null: false
    t.integer "age", null: false
    t.integer "prefecture_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "tasting_sheets", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "clarity_id"
    t.integer "brilliance_id"
    t.integer "depth_id"
    t.integer "viscosity_id"
    t.integer "attack_id"
    t.integer "sweetness_id"
    t.integer "bitterness_id"
    t.integer "alcohol_id"
    t.integer "finish_id"
    t.integer "serving_temperature_id"
    t.integer "glass_id"
    t.text "detail"
    t.bigint "wine_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["wine_id"], name: "index_tasting_sheets_on_wine_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nickname", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "wines", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.integer "type_id", null: false
    t.integer "country_id", null: false
    t.string "area"
    t.integer "variety_id"
    t.string "vintage"
    t.integer "star_id", null: false
    t.text "comment"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_wines_on_user_id"
  end

  add_foreign_key "acidities_tasting_sheets", "acidities"
  add_foreign_key "acidities_tasting_sheets", "tasting_sheets"
  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "appearances_tasting_sheets", "appearances"
  add_foreign_key "appearances_tasting_sheets", "tasting_sheets"
  add_foreign_key "aroma_elements_tasting_sheets", "aroma_elements"
  add_foreign_key "aroma_elements_tasting_sheets", "tasting_sheets"
  add_foreign_key "aroma_impressions_tasting_sheets", "aroma_impressions"
  add_foreign_key "aroma_impressions_tasting_sheets", "tasting_sheets"
  add_foreign_key "balances_tasting_sheets", "balances"
  add_foreign_key "balances_tasting_sheets", "tasting_sheets"
  add_foreign_key "evaluations_tasting_sheets", "evaluations"
  add_foreign_key "evaluations_tasting_sheets", "tasting_sheets"
  add_foreign_key "first_impressions_tasting_sheets", "first_impressions"
  add_foreign_key "first_impressions_tasting_sheets", "tasting_sheets"
  add_foreign_key "hues_tasting_sheets", "hues"
  add_foreign_key "hues_tasting_sheets", "tasting_sheets"
  add_foreign_key "profiles", "users"
  add_foreign_key "tasting_sheets", "wines"
  add_foreign_key "wines", "users"
end
