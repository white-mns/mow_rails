class AddIndexToConditionAllText < ActiveRecord::Migration[5.2]
  def change
    add_index :condition_all_texts, [:e_no, :result_no, :generate_no], :unique => false, :name => 'resultno_eno'
  end
end
