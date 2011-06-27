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

ActiveRecord::Schema.define(:version => 20110627211913) do

  create_table "daily_deal_locations", :force => true do |t|
    t.integer  "yipit_id"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.decimal  "lat"
    t.decimal  "lon"
    t.integer  "daily_deal_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "latitude"
    t.float    "longitude"
    t.boolean  "gmaps"
  end

  create_table "daily_deal_tags", :force => true do |t|
    t.string   "name"
    t.integer  "daily_deal_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "daily_deals", :force => true do |t|
    t.integer  "yipit_id"
    t.date     "date_added"
    t.date     "end_date"
    t.string   "discount"
    t.decimal  "price"
    t.decimal  "value"
    t.string   "title"
    t.string   "yipit_title"
    t.string   "yipit_url"
    t.string   "large_image"
    t.string   "small_image"
    t.string   "division"
    t.integer  "yipit_business_id"
    t.string   "yipit_business_name"
    t.string   "yipit_business_url"
    t.string   "source_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "members", :force => true do |t|
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "members", ["email"], :name => "index_members_on_email", :unique => true
  add_index "members", ["reset_password_token"], :name => "index_members_on_reset_password_token", :unique => true

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.string   "cached_slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "slugs", :force => true do |t|
    t.string   "name"
    t.integer  "sluggable_id"
    t.integer  "sequence",                     :default => 1, :null => false
    t.string   "sluggable_type", :limit => 40
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "slugs", ["name", "sluggable_type", "sequence", "scope"], :name => "index_slugs_on_n_s_s_and_s", :unique => true
  add_index "slugs", ["sluggable_id"], :name => "index_slugs_on_sluggable_id"

  create_table "wishlists", :force => true do |t|
    t.integer  "member_id"
    t.string   "product_origin"
    t.string   "product_identifier"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
