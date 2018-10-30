class Transition < ApplicationRecord
	belongs_to :p_name, :foreign_key => [:e_no, :result_no, :generate_no], :primary_key => [:e_no, :result_no, :generate_no], :class_name => 'Name'
    
    scope :data_type, ->(type)   { includes(:p_name).where(data_type: type) }
    scope :search_result, ->(params) { search(params[:q]).result }

    scope :to_transition_graph, ->(params) {
        pc_name = Hash[*Name.pluck(:e_no, :nickname).flatten]
        max_turn = Transition.search(params[:q]).result.maximum(:turn)
        transition_hash = self.pluck(:e_no, :turn, :value).inject(Hash.new(0)){|hash, a| 
            if !hash.has_key?(pc_name[a[0]]) then
                hash[pc_name[a[0]]] = Array.new(0);
            end
            hash[pc_name[a[0]]].push([a[1], a[2]]);
            hash}
        transition_array = Array.new(0)
        transition_hash.each { |key, value|
            tmp_hash = transition_hash[key].to_h
            (1..max_turn).each do |turn|
                tmp_hash[turn] = tmp_hash[turn - 1 ] unless tmp_hash[turn]
                tmp_hash.sort
            end
            transition_array.push({
                name: key,
                data: tmp_hash,
                spanGaps: true
            })
        }
     
        transition_array   
    }
end
