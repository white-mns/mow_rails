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

ActiveRecord::Schema.define(version: 2018_10_30_042356) do

  create_table "assembly_nums", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "result_no"
    t.integer "generate_no"
    t.integer "e_no"
    t.integer "division_type"
    t.integer "proper_name_id"
    t.integer "num"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["division_type"], name: "index_assembly_nums_on_division_type"
    t.index ["e_no", "result_no", "generate_no"], name: "resultno_eno"
    t.index ["num"], name: "index_assembly_nums_on_num"
    t.index ["proper_name_id"], name: "index_assembly_nums_on_proper_name_id"
  end

  create_table "battle_systems", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "result_no"
    t.integer "generate_no"
    t.integer "e_no"
    t.integer "battle_system"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["battle_system"], name: "index_battle_systems_on_battle_system"
    t.index ["e_no", "result_no", "generate_no"], name: "resultno_eno"
  end

  create_table "blocks", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "result_no"
    t.integer "generate_no"
    t.integer "block_no"
    t.integer "e_no"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["block_no"], name: "index_blocks_on_block_no"
    t.index ["e_no", "result_no", "generate_no"], name: "resultno_eno"
  end

  create_table "condition_all_texts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "result_no"
    t.integer "generate_no"
    t.integer "e_no"
    t.string "condition_text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["e_no", "result_no", "generate_no"], name: "resultno_eno"
  end

  create_table "consort_planes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "result_no"
    t.integer "generate_no"
    t.integer "e_no"
    t.integer "consort_plane"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["consort_plane"], name: "index_consort_planes_on_consort_plane"
    t.index ["e_no", "result_no", "generate_no"], name: "resultno_eno"
  end

  create_table "intentions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "result_no"
    t.integer "generate_no"
    t.integer "e_no"
    t.integer "intention"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["e_no", "result_no", "generate_no"], name: "resultno_eno"
    t.index ["intention"], name: "index_intentions_on_intention"
  end

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

  create_table "markets", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "result_no"
    t.integer "generate_no"
    t.integer "e_no"
    t.integer "market_no"
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
    t.integer "type_id"
    t.integer "equip"
    t.integer "fuka_1"
    t.integer "fuka_2"
    t.integer "charge"
    t.integer "orig_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["add_abnormity"], name: "index_markets_on_add_abnormity"
    t.index ["aerosol"], name: "index_markets_on_aerosol"
    t.index ["ammunition_cost"], name: "index_markets_on_ammunition_cost"
    t.index ["ap"], name: "index_markets_on_ap"
    t.index ["bullet"], name: "index_markets_on_bullet"
    t.index ["charge"], name: "index_markets_on_charge"
    t.index ["control"], name: "index_markets_on_control"
    t.index ["e_no", "market_no", "result_no", "generate_no"], name: "unique_eno"
    t.index ["equip"], name: "index_markets_on_equip"
    t.index ["fitly"], name: "index_markets_on_fitly"
    t.index ["fuka_1"], name: "index_markets_on_fuka_1"
    t.index ["fuka_2"], name: "index_markets_on_fuka_2"
    t.index ["guard_elemental"], name: "index_markets_on_guard_elemental"
    t.index ["guard_value"], name: "index_markets_on_guard_value"
    t.index ["gunshot"], name: "index_markets_on_gunshot"
    t.index ["kind"], name: "index_markets_on_kind"
    t.index ["loading"], name: "index_markets_on_loading"
    t.index ["name"], name: "index_markets_on_name"
    t.index ["orig_name"], name: "index_markets_on_orig_name"
    t.index ["precision"], name: "index_markets_on_precision"
    t.index ["preparation"], name: "index_markets_on_preparation"
    t.index ["punding"], name: "index_markets_on_punding"
    t.index ["reaction"], name: "index_markets_on_reaction"
    t.index ["spending_en"], name: "index_markets_on_spending_en"
    t.index ["strength"], name: "index_markets_on_strength"
    t.index ["struggle"], name: "index_markets_on_struggle"
    t.index ["turning_speed"], name: "index_markets_on_turning_speed"
    t.index ["type_id"], name: "index_markets_on_type_id"
    t.index ["unique_1"], name: "index_markets_on_unique_1"
    t.index ["unique_2"], name: "index_markets_on_unique_2"
    t.index ["value"], name: "index_markets_on_value"
    t.index ["weapon_element"], name: "index_markets_on_weapon_element"
    t.index ["weight"], name: "index_markets_on_weight"
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

  create_table "next_battles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "result_no"
    t.integer "generate_no"
    t.integer "block_no"
    t.integer "e_no"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["block_no"], name: "index_next_battles_on_block_no"
    t.index ["e_no", "result_no", "generate_no"], name: "resultno_eno"
  end

  create_table "proper_names", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "proper_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_proper_names_on_name"
    t.index ["proper_id"], name: "index_proper_names_on_proper_id"
  end

  create_table "rewards", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "result_no"
    t.integer "generate_no"
    t.integer "e_no"
    t.integer "battle_income"
    t.integer "add_income"
    t.float "attack"
    t.float "support"
    t.float "defense"
    t.float "defeat"
    t.float "selling"
    t.float "sub_quest"
    t.float "enemy_caution"
    t.float "colosseum_win"
    t.float "fight_money"
    t.integer "total_income"
    t.integer "ammunition_cost"
    t.integer "preparation_deduction"
    t.integer "preparation_cost"
    t.integer "union_cost"
    t.integer "prize"
    t.integer "union_interest"
    t.integer "parts_sell"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["add_income"], name: "index_rewards_on_add_income"
    t.index ["ammunition_cost"], name: "index_rewards_on_ammunition_cost"
    t.index ["attack"], name: "index_rewards_on_attack"
    t.index ["battle_income"], name: "index_rewards_on_battle_income"
    t.index ["colosseum_win"], name: "index_rewards_on_colosseum_win"
    t.index ["defeat"], name: "index_rewards_on_defeat"
    t.index ["defense"], name: "index_rewards_on_defense"
    t.index ["e_no", "result_no", "generate_no"], name: "resultno_eno"
    t.index ["enemy_caution"], name: "index_rewards_on_enemy_caution"
    t.index ["fight_money"], name: "index_rewards_on_fight_money"
    t.index ["parts_sell"], name: "index_rewards_on_parts_sell"
    t.index ["preparation_cost"], name: "index_rewards_on_preparation_cost"
    t.index ["preparation_deduction"], name: "index_rewards_on_preparation_deduction"
    t.index ["prize"], name: "index_rewards_on_prize"
    t.index ["selling"], name: "index_rewards_on_selling"
    t.index ["sub_quest"], name: "index_rewards_on_sub_quest"
    t.index ["support"], name: "index_rewards_on_support"
    t.index ["total_income"], name: "index_rewards_on_total_income"
    t.index ["union_cost"], name: "index_rewards_on_union_cost"
    t.index ["union_interest"], name: "index_rewards_on_union_interest"
  end

  create_table "specs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "result_no"
    t.integer "generate_no"
    t.integer "e_no"
    t.integer "ap"
    t.integer "en"
    t.integer "en_recovery"
    t.integer "movement"
    t.integer "weight"
    t.integer "turning_speed"
    t.integer "jump"
    t.integer "max_power"
    t.integer "search"
    t.integer "precision"
    t.integer "punding"
    t.integer "aerosol"
    t.integer "pysics"
    t.integer "spirit"
    t.integer "particle"
    t.integer "flame"
    t.integer "electric"
    t.integer "loading"
    t.integer "max_loading"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["aerosol"], name: "index_specs_on_aerosol"
    t.index ["ap"], name: "index_specs_on_ap"
    t.index ["e_no", "result_no", "generate_no"], name: "resultno_eno"
    t.index ["electric"], name: "index_specs_on_electric"
    t.index ["en"], name: "index_specs_on_en"
    t.index ["en_recovery"], name: "index_specs_on_en_recovery"
    t.index ["flame"], name: "index_specs_on_flame"
    t.index ["jump"], name: "index_specs_on_jump"
    t.index ["loading"], name: "index_specs_on_loading"
    t.index ["max_loading"], name: "index_specs_on_max_loading"
    t.index ["max_power"], name: "index_specs_on_max_power"
    t.index ["movement"], name: "index_specs_on_movement"
    t.index ["particle"], name: "index_specs_on_particle"
    t.index ["precision"], name: "index_specs_on_precision"
    t.index ["punding"], name: "index_specs_on_punding"
    t.index ["pysics"], name: "index_specs_on_pysics"
    t.index ["search"], name: "index_specs_on_search"
    t.index ["spirit"], name: "index_specs_on_spirit"
    t.index ["turning_speed"], name: "index_specs_on_turning_speed"
    t.index ["weight"], name: "index_specs_on_weight"
  end

  create_table "statuses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "result_no"
    t.integer "generate_no"
    t.integer "e_no"
    t.integer "acc_reward"
    t.integer "rp"
    t.integer "gunshot"
    t.integer "struggle"
    t.integer "reaction"
    t.integer "control"
    t.integer "preparation"
    t.integer "fitly"
    t.integer "funds"
    t.integer "exp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["acc_reward"], name: "index_statuses_on_acc_reward"
    t.index ["control"], name: "index_statuses_on_control"
    t.index ["e_no", "result_no", "generate_no"], name: "resultno_eno"
    t.index ["exp"], name: "index_statuses_on_exp"
    t.index ["fitly"], name: "index_statuses_on_fitly"
    t.index ["funds"], name: "index_statuses_on_funds"
    t.index ["gunshot"], name: "index_statuses_on_gunshot"
    t.index ["preparation"], name: "index_statuses_on_preparation"
    t.index ["reaction"], name: "index_statuses_on_reaction"
    t.index ["rp"], name: "index_statuses_on_rp"
    t.index ["struggle"], name: "index_statuses_on_struggle"
  end

  create_table "transitions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "result_no"
    t.integer "generate_no"
    t.integer "block_no"
    t.integer "e_no"
    t.integer "turn"
    t.integer "act"
    t.integer "data_type"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["act"], name: "index_transitions_on_act"
    t.index ["block_no"], name: "index_transitions_on_block_no"
    t.index ["data_type"], name: "index_transitions_on_data_type"
    t.index ["e_no", "result_no", "generate_no"], name: "resultno_eno"
    t.index ["turn"], name: "index_transitions_on_turn"
    t.index ["value"], name: "index_transitions_on_value"
  end

end
