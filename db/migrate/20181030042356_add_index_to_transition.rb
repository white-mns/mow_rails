class AddIndexToTransition < ActiveRecord::Migration[5.2]
  def change
    add_index :transitions, [:e_no, :result_no, :generate_no], :unique => false, :name => 'resultno_eno'
    add_index :transitions, :block_no
    add_index :transitions, :turn
    add_index :transitions, :act
    add_index :transitions, :data_type
    add_index :transitions, :value
  end
end
