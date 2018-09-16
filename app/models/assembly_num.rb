class AssemblyNum < ApplicationRecord
	belongs_to :p_name,	    :foreign_key => [:e_no, :result_no, :generate_no], :primary_key => [:e_no, :result_no, :generate_no], :class_name => 'Name'
	belongs_to :parts_name, :foreign_key => :proper_name_id, :primary_key => :proper_id, :class_name => 'ProperName'
	belongs_to :leg,      -> { where(equip: 3)},     :foreign_key => [:e_no, :result_no, :generate_no], :primary_key => [:e_no, :result_no, :generate_no], :class_name => 'Item'
	has_many   :assembly, -> { where(equip: 1..10)}, :foreign_key => [:e_no, :result_no, :generate_no], :primary_key => [:e_no, :result_no, :generate_no], :class_name => 'Item'
end
