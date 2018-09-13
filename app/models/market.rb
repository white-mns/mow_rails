class Market < ApplicationRecord
	belongs_to :p_name,	    :foreign_key => [:e_no, :result_no, :generate_no], :primary_key => [:e_no, :result_no, :generate_no], :class_name => 'Name'
	belongs_to :kind_name,            :foreign_key => :kind,            :primary_key => :proper_id, :class_name => 'ProperName'
	belongs_to :orig_name_name,       :foreign_key => :orig_name,       :primary_key => :proper_id, :class_name => 'ProperName'
	belongs_to :guard_elemental_name, :foreign_key => :guard_elemental, :primary_key => :proper_id, :class_name => 'ProperName'
	belongs_to :fuka_1_name,          :foreign_key => :fuka_1,          :primary_key => :proper_id, :class_name => 'ProperName'
	belongs_to :fuka_2_name,          :foreign_key => :fuka_2,          :primary_key => :proper_id, :class_name => 'ProperName'
	belongs_to :weapon_element_name,  :foreign_key => :weapon_element,  :primary_key => :proper_id, :class_name => 'ProperName'
end
