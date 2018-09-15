class AddIndexToConsortPlane < ActiveRecord::Migration[5.2]
  def change
    add_index :consort_planes, [:e_no, :result_no, :generate_no], :unique => false, :name => 'resultno_eno'
    add_index :consort_planes, :consort_plane
  end
end
