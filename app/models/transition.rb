class Transition < ApplicationRecord
	belongs_to :p_name, :foreign_key => [:e_no, :result_no, :generate_no], :primary_key => [:e_no, :result_no, :generate_no], :class_name => 'Name'
    
    scope :data_type, ->(type)   { includes(:p_name).where(data_type: type) }
    scope :search_result, ->(params) { search(params[:q]).result }

    scope :to_transition_graph, ->(params) {
        pc_name = Hash[*Name.pluck(:e_no, :nickname).flatten]
        transition_hash = self.pluck(:e_no, :turn, :value).inject(Hash.new(0)){|hash, a| hash[ [pc_name[a[0]], a[1]] ] = a[2];hash}
     
        transition_hash   
    }
end
