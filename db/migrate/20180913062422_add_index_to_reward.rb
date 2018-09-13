class AddIndexToReward < ActiveRecord::Migration[5.2]
  def change
    add_index :rewards, [:e_no, :result_no, :generate_no], :unique => false, :name => 'resultno_eno'
    add_index :rewards,  :battle_income
    add_index :rewards,  :add_income
    add_index :rewards,  :attack
    add_index :rewards,  :support
    add_index :rewards,  :defense
    add_index :rewards,  :defeat
    add_index :rewards,  :selling
    add_index :rewards,  :sub_quest
    add_index :rewards,  :enemy_caution
    add_index :rewards,  :colosseum_win
    add_index :rewards,  :fight_money
    add_index :rewards,  :total_income
    add_index :rewards,  :ammunition_cost
    add_index :rewards,  :preparation_deduction
    add_index :rewards,  :preparation_cost
    add_index :rewards,  :union_cost
    add_index :rewards,  :prize
    add_index :rewards,  :union_interest
    add_index :rewards,  :parts_sell
  end
end
