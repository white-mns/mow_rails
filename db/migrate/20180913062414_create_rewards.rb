class CreateRewards < ActiveRecord::Migration[5.2]
  def change
    create_table :rewards do |t|
      t.integer :result_no
      t.integer :generate_no
      t.integer :e_no
      t.float :battle_income
      t.float :add_income
      t.float :attack
      t.float :support
      t.float :defense
      t.float :defeat
      t.float :selling
      t.float :sub_quest
      t.float :enemy_caution
      t.float :colosseum_win
      t.float :fight_money
      t.integer :total_income
      t.integer :ammunition_cost
      t.integer :preparation_deduction
      t.integer :preparation_cost
      t.integer :union_cost
      t.integer :prize
      t.integer :union_interest
      t.integer :parts_sell

      t.timestamps
    end
  end
end
