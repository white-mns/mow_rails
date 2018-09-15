class CreateConsortPlanes < ActiveRecord::Migration[5.2]
  def change
    create_table :consort_planes do |t|
      t.integer :result_no
      t.integer :generate_no
      t.integer :e_no
      t.integer :consort_plane

      t.timestamps
    end
  end
end
