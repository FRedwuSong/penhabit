ActiveRecord::Schema.define(version: 2018_05_30_095455) do

  create_table "pens", force: :cascade do |t|
    t.string "name"
    t.string "brand"
    t.text "description"
    t.float "price", default: 0.0
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "name"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "watches", force: :cascade do |t|
    t.integer "user_id"
    t.integer "pen_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pen_id"], name: "index_watches_on_pen_id"
    t.index ["user_id"], name: "index_watches_on_user_id"
  end

end
