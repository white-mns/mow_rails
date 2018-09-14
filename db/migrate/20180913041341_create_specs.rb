class CreateSpecs < ActiveRecord::Migration[5.2]
  def change
    create_table :specs do |t|
      t.integer :result_no
      t.integer :generate_no
      t.integer :e_no
      t.integer :ap
      t.integer :en
      t.integer :en_recovery
      t.integer :movement
      t.integer :weight
      t.integer :turning_speed
      t.integer :jump
      t.integer :max_power
      t.integer :search
      t.integer :precision
      t.integer :punding
      t.integer :aerosol
      t.integer :pysics
      t.integer :spirit
      t.integer :particle
      t.integer :flame
      t.integer :electric
      t.integer :loading
      t.integer :max_loading

      t.timestamps
    end
  end
end
