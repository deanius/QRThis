# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20101121160824) do

  create_table "designs", :force => true do |t|
    t.string   "path"
    t.string   "mime_type"
    t.integer  "height"
    t.integer  "width"
    t.integer  "offset_left"
    t.integer  "offset_top"
    t.integer  "dpi"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "merges", :force => true do |t|
    t.integer "qrcode_id"
    t.integer "design_id"
    t.string  "path"
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.integer  "vendor_id"
    t.integer  "retail_price"
    t.string   "printable_areas"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "qrcodes", :force => true do |t|
    t.text     "md5"
    t.text     "contents_base64"
    t.text     "mime_type"
    t.text     "string_rep"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "renderings", :force => true do |t|
    t.integer "qrcode_id"
    t.integer "slogan_id"
    t.integer "options"
    t.integer "ecc"
    t.integer "size"
  end

  create_table "slogans", :force => true do |t|
    t.integer  "user_id"
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_products", :force => true do |t|
    t.integer  "user_id"
    t.integer  "product_id"
    t.integer  "merge_id"
    t.integer  "design_id"
    t.string   "printable_area"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vendors", :force => true do |t|
    t.string   "name"
    t.string   "type"
    t.string   "options"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
