class CreateMarkets < ActiveRecord::Migration[5.2]
  def change
    create_table :markets do |t|
      t.integer :result_no
      t.integer :generate_no
      t.integer :e_no
      t.integer :market_no
      t.string :name
      t.integer :kind
      t.integer :unique_1
      t.integer :unique_2
      t.integer :ap
      t.integer :spending_en
      t.integer :value
      t.integer :ammunition_cost
      t.integer :weight
      t.integer :turning_speed
      t.integer :guard_elemental
      t.integer :guard_value
      t.integer :precision
      t.integer :punding
      t.integer :aerosol
      t.integer :bullet
      t.integer :loading
      t.integer :weapon_element
      t.integer :add_abnormity
      t.integer :strength
      t.integer :gunshot
      t.integer :struggle
      t.integer :reaction
      t.integer :control
      t.integer :preparation
      t.integer :fitly
      t.integer :type
      t.integer :equip
      t.integer :fuka_1
      t.integer :fuka_2
      t.integer :charge
      t.integer :orig_name

      t.timestamps
    end
  end
end
