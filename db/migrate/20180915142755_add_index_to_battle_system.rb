class AddIndexToBattleSystem < ActiveRecord::Migration[5.2]
  def change
    add_index :battle_systems, [:e_no, :result_no, :generate_no], :unique => false, :name => 'resultno_eno'
    add_index :battle_systems, :battle_system
  end
end
