class CreateStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :statuses do |t|
      t.integer :result_no
      t.integer :generate_no
      t.integer :e_no
      t.integer :acc_reward
      t.integer :rp
      t.integer :gunshot
      t.integer :struggle
      t.integer :reaction
      t.integer :control
      t.integer :preparation
      t.integer :fitly
      t.integer :funds
      t.integer :exp

      t.timestamps
    end
  end
end
