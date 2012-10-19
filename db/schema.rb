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

ActiveRecord::Schema.define(:version => 20121007113729) do

  create_table "accommodation_unitrails", :force => true do |t|
    t.string   "name"
    t.string   "contact_person"
    t.string   "tel_contact_person"
    t.string   "city"
    t.string   "street"
    t.integer  "house_number"
    t.integer  "postal_code"
    t.integer  "amount_of_lebenshilfe_stars"
    t.string   "internetadress"
    t.text     "description"
    t.decimal  "price"
    t.integer  "amount_of_rooms"
    t.string   "email"
    t.float    "latitude"
    t.float    "longitude"
    t.float    "distance"
    t.float    "max_group_size"
    t.boolean  "horse_riding"
    t.boolean  "bowling"
    t.boolean  "table_tennis"
    t.boolean  "kicker"
    t.boolean  "playground"
    t.boolean  "bedding"
    t.boolean  "grouproom"
    t.boolean  "internet"
    t.boolean  "dvd_player"
    t.boolean  "music_station"
    t.boolean  "television"
    t.boolean  "beamer"
    t.boolean  "natatorium"
    t.boolean  "outdoor_swimming_bath"
    t.boolean  "barrier_free"
    t.boolean  "wheelchair_accessible_bed"
    t.boolean  "coster_bed"
    t.boolean  "lifter"
    t.boolean  "public_transfer"
    t.boolean  "public_transfer_weelchair"
    t.boolean  "shopping_facilities"
    t.boolean  "care_service"
    t.boolean  "self_supply"
    t.boolean  "full_board"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

end
