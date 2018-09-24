class AssemblyNumsController < ApplicationController
  include MyUtility
  before_action :set_assembly_num, only: [:show, :edit, :update, :destroy]

  # GET /assembly_nums
  def index
    param_set
    @count	= AssemblyNum.notnil().includes(:p_name, :parts_name).search(params[:q]).result.count()
    @search	= AssemblyNum.notnil().includes(:p_name, :parts_name).page(params[:page]).search(params[:q])
    @search.sorts = 'num desc' if @search.sorts.empty?
    @assembly_nums	= @search.result.per(50)
  end
  # GET /mega_assembles
  def mega_assemble
      index
  end

  # GET /five_radars
  def five_radar
    params["is_division_0"] = "on"
    params["parts_name_form"] ||= "\"レーダー\""
    param_set
    params[:q]["num_gteq_any"] ||= [5]

    @count	= AssemblyNum.notnil().includes(:p_name, :parts_name, :reward, :block, :next_battle, [leg: :orig_name_name], [assembly: :orig_name_name]).search(params[:q]).result.count()
    @search	= AssemblyNum.notnil().includes(:p_name, :parts_name, :reward, :block, :next_battle, [leg: :orig_name_name], [assembly: :orig_name_name]).page(params[:page]).search(params[:q])
    @assembly_nums	= @search.result.per(50)
  end

  def param_set
    @last_result = Name.maximum('result_no')

    params[:q] ||= {}
    if !params["is_form"] then
        params["result_no_form"] ||= sprintf('%d',@last_result)
        params["is_division_0"] ||= "on"
    end
    params[:q]["e_no_not_eq_any"] ||= [0]
    
    reference_text_assign(params, "p_name_name", "p_name_form")
    reference_number_assign(params, "result_no", "result_no_form")
    reference_number_assign(params, "generate_no", "generate_no_form")
    reference_number_assign(params, "e_no", "e_no_form")
    reference_number_assign(params, "division_type", "division_type_form")
    reference_text_assign(params, "parts_name_name", "parts_name_form")
    reference_number_assign(params, "num", "num_form")

    reference_number_assign(params, "reward_total_income", "total_income_form")
    reference_number_assign(params, "reward_attack", "attack_form")
    reference_number_assign(params, "reward_support", "support_form")
    reference_number_assign(params, "reward_defense", "defense_form")
    reference_number_assign(params, "block_block_no", "block_no_form")
    reference_number_assign(params, "next_battle_block_no", "next_block_no_form")
    reference_text_assign(params, "leg_orig_name_name_name", "leg_form")
    reference_text_assign(params, "assembly_orig_name_name_name", "assembly_form")
    
    params[:q]["division_type_eq_any"] ||= []
    if params["is_division_0"] == "on" then params[:q]["division_type_eq_any"].push(0) end
    if params["is_division_1"] == "on" then params[:q]["division_type_eq_any"].push(1) end

    @p_name_form = params["p_name_form"]
    @result_no_form = params["result_no_form"]
    @generate_no_form = params["generate_no_form"]
    @e_no_form = params["e_no_form"]
    @division_type_form = params["division_type_form"]
    @parts_name_form = params["parts_name_form"]
    @num_form = params["num_form"]

    @total_income_form = params["total_income_form"]
    @attack_form = params["attack_form"]
    @support_form = params["support_form"]
    @defense_form = params["defense_form"]
    @block_no_form = params["block_no_form"]
    @next_block_no_form = params["next_block_no_form"]
    @leg_form = params["leg_form"]
    @assembly_form = params["assembly_form"]

    @is_division_0 = params["is_division_0"]
    @is_division_1 = params["is_division_1"]

    @show_detail_reward_1 = params["show_detail_reward_1"]
    @show_detail_block_1 = params["show_detail_block_1"]
    @show_detail_next_battle_1 = params["show_detail_next_battle_1"]
    @show_detail_assembly_1 = params["show_detail_assembly_1"]
  end
  # GET /assembly_nums/1
  #def show
  #end

  # GET /assembly_nums/new
  #def new
  #  @assembly_num = AssemblyNum.new
  #end

  # GET /assembly_nums/1/edit
  #def edit
  #end

  # POST /assembly_nums
  #def create
  #  @assembly_num = AssemblyNum.new(assembly_num_params)

  #  if @assembly_num.save
  #    redirect_to @assembly_num, notice: 'Assembly num was successfully created.'
  #  else
  #    render action: 'new'
  #  end
  #end

  # PATCH/PUT /assembly_nums/1
  #def update
  #  if @assembly_num.update(assembly_num_params)
  #    redirect_to @assembly_num, notice: 'Assembly num was successfully updated.'
  #  else
  #    render action: 'edit'
  #  end
  #end

  # DELETE /assembly_nums/1
  #def destroy
  #  @assembly_num.destroy
  #  redirect_to assembly_nums_url, notice: 'Assembly num was successfully destroyed.'
  #end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assembly_num
      @assembly_num = AssemblyNum.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def assembly_num_params
      params.require(:assembly_num).permit(:result_no, :generate_no, :e_no, :division_type, :proper_name_id, :num)
    end
end
