class CreateBattleSystems < ActiveRecord::Migration[5.2]
  def change
    create_table :battle_systems do |t|
      t.integer :result_no
      t.integer :generate_no
      t.integer :e_no
      t.integer :battle_system

      t.timestamps
    end
  end
end
