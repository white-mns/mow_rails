class AddIndexToMarket < ActiveRecord::Migration[5.2]
  def change
    add_index :markets, [:e_no, :market_no, :result_no, :generate_no], :unique => false, :name => 'unique_eno'
    add_index :markets, :name
    add_index :markets, :kind
    add_index :markets, :unique_1
    add_index :markets, :unique_2
    add_index :markets, :ap
    add_index :markets, :spending_en
    add_index :markets, :value
    add_index :markets, :ammunition_cost
    add_index :markets, :weight
    add_index :markets, :turning_speed
    add_index :markets, :guard_elemental
    add_index :markets, :guard_value
    add_index :markets, :precision
    add_index :markets, :punding
    add_index :markets, :aerosol
    add_index :markets, :bullet
    add_index :markets, :loading
    add_index :markets, :weapon_element
    add_index :markets, :add_abnormity
    add_index :markets, :strength
    add_index :markets, :gunshot
    add_index :markets, :struggle
    add_index :markets, :reaction
    add_index :markets, :control
    add_index :markets, :preparation
    add_index :markets, :fitly
    add_index :markets, :type
    add_index :markets, :equip
    add_index :markets, :fuka_1
    add_index :markets, :fuka_2
    add_index :markets, :charge
    add_index :markets, :orig_name
  end
end
