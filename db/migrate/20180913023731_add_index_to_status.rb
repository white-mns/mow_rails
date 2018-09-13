class AddIndexToStatus < ActiveRecord::Migration[5.2]
  def change
    add_index :statuses, [:e_no, :result_no, :generate_no], :unique => false, :name => 'resultno_eno'
    add_index :statuses, :acc_reward
    add_index :statuses, :rp
    add_index :statuses, :gunshot
    add_index :statuses, :struggle
    add_index :statuses, :reaction
    add_index :statuses, :control
    add_index :statuses, :preparation
    add_index :statuses, :fitly
    add_index :statuses, :funds
    add_index :statuses, :exp
  end
end
