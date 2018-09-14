class AddIndexToSpec < ActiveRecord::Migration[5.2]
  def change
    add_index :specs, [:e_no, :result_no, :generate_no], :unique => false, :name => 'resultno_eno'
    add_index :specs, :ap
    add_index :specs, :en
    add_index :specs, :en_recovery
    add_index :specs, :movement
    add_index :specs, :weight
    add_index :specs, :turning_speed
    add_index :specs, :jump
    add_index :specs, :max_power
    add_index :specs, :search
    add_index :specs, :precision
    add_index :specs, :punding
    add_index :specs, :aerosol
    add_index :specs, :pysics
    add_index :specs, :spirit
    add_index :specs, :particle
    add_index :specs, :flame
    add_index :specs, :electric
    add_index :specs, :loading
    add_index :specs, :max_loading
  end
end
