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

ActiveRecord::Schema.define(version: 2018_09_12_185554) do

  create_table "items", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "result_no"
    t.integer "generate_no"
    t.integer "e_no"
    t.integer "i_no"
    t.string "name"
    t.integer "kind"
    t.integer "unique_1"
    t.integer "unique_2"
    t.integer "ap"
    t.integer "spending_en"
    t.integer "value"
    t.integer "ammunition_cost"
    t.integer "weight"
    t.integer "turning_speed"
    t.integer "guard_elemental"
    t.integer "guard_value"
    t.integer "precision"
    t.integer "punding"
    t.integer "aerosol"
    t.integer "bullet"
    t.integer "loading"
    t.integer "weapon_element"
    t.integer "add_abnormity"
    t.integer "strength"
    t.integer "gunshot"
    t.integer "struggle"
    t.integer "reaction"
    t.integer "control"
    t.integer "preparation"
    t.integer "fitly"
    t.integer "equip"
    t.integer "fuka_1"
    t.integer "fuka_2"
    t.integer "orig_name"
    t.integer "drunkenness"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["add_abnormity"], name: "index_items_on_add_abnormity"
    t.index ["aerosol"], name: "index_items_on_aerosol"
    t.index ["ammunition_cost"], name: "index_items_on_ammunition_cost"
    t.index ["ap"], name: "index_items_on_ap"
    t.index ["bullet"], name: "index_items_on_bullet"
    t.index ["control"], name: "index_items_on_control"
    t.index ["drunkenness"], name: "index_items_on_drunkenness"
    t.index ["e_no", "i_no", "result_no", "generate_no"], name: "unique_eno"
    t.index ["equip"], name: "index_items_on_equip"
    t.index ["fitly"], name: "index_items_on_fitly"
    t.index ["fuka_1"], name: "index_items_on_fuka_1"
    t.index ["fuka_2"], name: "index_items_on_fuka_2"
    t.index ["guard_elemental"], name: "index_items_on_guard_elemental"
    t.index ["guard_value"], name: "index_items_on_guard_value"
    t.index ["gunshot"], name: "index_items_on_gunshot"
    t.index ["kind"], name: "index_items_on_kind"
    t.index ["loading"], name: "index_items_on_loading"
    t.index ["name"], name: "index_items_on_name"
    t.index ["orig_name"], name: "index_items_on_orig_name"
    t.index ["precision"], name: "index_items_on_precision"
    t.index ["preparation"], name: "index_items_on_preparation"
    t.index ["punding"], name: "index_items_on_punding"
    t.index ["reaction"], name: "index_items_on_reaction"
    t.index ["spending_en"], name: "index_items_on_spending_en"
    t.index ["strength"], name: "index_items_on_strength"
    t.index ["struggle"], name: "index_items_on_struggle"
    t.index ["turning_speed"], name: "index_items_on_turning_speed"
    t.index ["unique_1"], name: "index_items_on_unique_1"
    t.index ["unique_2"], name: "index_items_on_unique_2"
    t.index ["value"], name: "index_items_on_value"
    t.index ["weapon_element"], name: "index_items_on_weapon_element"
    t.index ["weight"], name: "index_items_on_weight"
  end

  create_table "names", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "result_no"
    t.integer "generate_no"
    t.integer "e_no"
    t.string "name"
    t.string "nickname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["e_no", "result_no", "generate_no"], name: "unique_eno"
  end

  create_table "proper_names", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "proper_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_proper_names_on_name"
    t.index ["proper_id"], name: "index_proper_names_on_proper_id"
  end

end
