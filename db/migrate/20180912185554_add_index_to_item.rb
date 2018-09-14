class AddIndexToItem < ActiveRecord::Migration[5.2]
  def change
    add_index :items, [:e_no, :i_no, :result_no, :generate_no], :unique => false, :name => 'unique_eno'
    add_index :items, :name
    add_index :items, :kind
    add_index :items, :unique_1
    add_index :items, :unique_2
    add_index :items, :ap
    add_index :items, :spending_en
    add_index :items, :value
    add_index :items, :ammunition_cost
    add_index :items, :weight
    add_index :items, :turning_speed
    add_index :items, :guard_elemental
    add_index :items, :guard_value
    add_index :items, :precision
    add_index :items, :punding
    add_index :items, :aerosol
    add_index :items, :bullet
    add_index :items, :loading
    add_index :items, :weapon_element
    add_index :items, :add_abnormity
    add_index :items, :strength
    add_index :items, :gunshot
    add_index :items, :struggle
    add_index :items, :reaction
    add_index :items, :control
    add_index :items, :preparation
    add_index :items, :fitly
    add_index :items, :equip
    add_index :items, :fuka_1
    add_index :items, :fuka_2
    add_index :items, :orig_name
    add_index :items, :drunkenness
  end
end
