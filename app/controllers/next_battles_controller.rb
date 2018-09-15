class NextBattlesController < ApplicationController
  include MyUtility
  before_action :set_next_battle, only: [:show, :edit, :update, :destroy]

  # GET /next_battles
  def index
    param_set
    @count	= NextBattle.includes(:p_name, :status, :spec, :reward, :condition_all_text, [leg: :orig_name_name], [assembly: :orig_name_name], [battle_system: :battle_system_name], [intention: :intention_name], [consort_plane: :consort_plane_name]).search(params[:q]).result.count()
    @search	= NextBattle.includes(:p_name, :status, :spec, :reward, :condition_all_text, [leg: :orig_name_name], [assembly: :orig_name_name], [battle_system: :battle_system_name], [intention: :intention_name], [consort_plane: :consort_plane_name]).page(params[:page]).search(params[:q])
    @search.sorts = 'id asc' if @search.sorts.empty?
    @next_battles	= @search.result.per(50)
  end

  def param_set
    @last_result = Name.maximum('result_no')

    params[:q] ||= {}
    if !params["is_form"] then
        params["result_no_form"] ||= sprintf('%d',@last_result)
    end
    
    reference_text_assign(params, "p_name_name", "p_name_form")
    reference_number_assign(params, "result_no", "result_no_form")
    reference_number_assign(params, "generate_no", "generate_no_form")
    reference_number_assign(params, "block_no", "block_no_form")
    reference_number_assign(params, "e_no", "e_no_form")

    reference_number_assign(params, "status_acc_reward", "acc_reward_form")
    reference_number_assign(params, "reward_total_income", "total_income_form")
    reference_number_assign(params, "reward_attack", "attack_form")
    reference_number_assign(params, "reward_support", "support_form")
    reference_number_assign(params, "reward_defense", "defense_form")
    reference_text_assign(params, "leg_orig_name_name_name", "leg_form")
    reference_text_assign(params, "assembly_orig_name_name_name", "assembly_form")
    reference_text_assign(params, "battle_system_battle_system_name_name", "battle_system_form")
    reference_text_assign(params, "intention_intention_name_name", "intention_form")
    reference_text_assign(params, "consort_plane_consort_plane", "consort_plane_form")
    reference_text_assign(params, "consort_plane_consort_plane_name_name", "consort_plane_name_form")
    reference_number_assign(params, "spec_ap", "ap_form")
    reference_number_assign(params, "spec_en", "en_form")
    reference_number_assign(params, "spec_en_recovery", "en_recovery_form")
    reference_number_assign(params, "spec_movement", "movement_form")
    reference_number_assign(params, "spec_weight", "weight_form")
    reference_number_assign(params, "spec_turning_speed", "turning_speed_form")
    reference_number_assign(params, "spec_jump", "jump_form")
    reference_number_assign(params, "spec_max_power", "max_power_form")
    reference_number_assign(params, "spec_search", "search_form")
    reference_number_assign(params, "spec_precision", "precision_form")
    reference_number_assign(params, "spec_punding", "punding_form")
    reference_number_assign(params, "spec_aerosol", "aerosol_form")
    reference_number_assign(params, "spec_pysics", "pysics_form")
    reference_number_assign(params, "spec_spirit", "spirit_form")
    reference_number_assign(params, "spec_particle", "particle_form")
    reference_number_assign(params, "spec_flame", "flame_form")
    reference_number_assign(params, "spec_electric", "electric_form")
    reference_number_assign(params, "spec_loading", "loading_form")
    reference_number_assign(params, "spec_max_loading", "max_loading_form")
    reference_text_assign(params, "condition_all_text_condition_text", "condition_text_form")
    
    @p_name_form = params["p_name_form"]
    @result_no_form = params["result_no_form"]
    @generate_no_form = params["generate_no_form"]
    @block_no_form = params["block_no_form"]
    @e_no_form = params["e_no_form"]

    @acc_reward_form = params["acc_reward_form"]
    @total_income_form = params["total_income_form"]
    @attack_form = params["attack_form"]
    @support_form = params["support_form"]
    @defense_form = params["defense_form"]
    @leg_form = params["leg_form"]
    @assembly_form = params["assembly_form"]
    @battle_system_form = params["battle_system_form"]
    @intention_form = params["intention_form"]
    @consort_plane_form = params["consort_plane_form"]
    @consort_plane_name_form = params["consort_plane_name_form"]
    @ap_form = params["ap_form"]
    @en_form = params["en_form"]
    @en_recovery_form = params["en_recovery_form"]
    @movement_form = params["movement_form"]
    @weight_form = params["weight_form"]
    @turning_speed_form = params["turning_speed_form"]
    @jump_form = params["jump_form"]
    @max_power_form = params["max_power_form"]
    @search_form = params["search_form"]
    @precision_form = params["precision_form"]
    @punding_form = params["punding_form"]
    @aerosol_form = params["aerosol_form"]
    @pysics_form = params["pysics_form"]
    @spirit_form = params["spirit_form"]
    @particle_form = params["particle_form"]
    @flame_form = params["flame_form"]
    @electric_form = params["electric_form"]
    @loading_form = params["loading_form"]
    @max_loading_form = params["max_loading_form"]
    @condition_text_form = params["condition_text_form"]

    @show_detail_status_1 = params["show_detail_status_1"]
    @show_detail_reward_1 = params["show_detail_reward_1"]
    @show_detail_assembly_1 = params["show_detail_assembly_1"]
    @show_all_assembly = params["show_all_assembly"]
    @show_detail_battle_system_1 = params["show_detail_battle_system_1"]
    @show_detail_intention_1 = params["show_detail_intention_1"]
    @show_detail_consort_plane_1 = params["show_detail_consort_plane_1"]
    @show_consort_plane_name = params["show_consort_plane_name"]
    @show_detail_spec_1 = params["show_detail_spec_1"]
    @show_detail_spec_2 = params["show_detail_spec_2"]
    @show_detail_spec_3 = params["show_detail_spec_3"]
    @show_detail_condition_1 = params["show_detail_condition_1"]
    @base_first    = (!params["is_form"]) ? "1" : "0"
  end
  # GET /next_battles/1
  #def show
  #end

  # GET /next_battles/new
  #def new
  #  @next_battle = NextBattle.new
  #end

  # GET /next_battles/1/edit
  #def edit
  #end

  # POST /next_battles
  #def create
  #  @next_battle = NextBattle.new(next_battle_params)

  #  if @next_battle.save
  #    redirect_to @next_battle, notice: 'Next battle was successfully created.'
  #  else
  #    render action: 'new'
  #  end
  #end

  # PATCH/PUT /next_battles/1
  #def update
  #  if @next_battle.update(next_battle_params)
  #    redirect_to @next_battle, notice: 'Next battle was successfully updated.'
  #  else
  #    render action: 'edit'
  #  end
  #end

  # DELETE /next_battles/1
  #def destroy
  #  @next_battle.destroy
  #  redirect_to next_battles_url, notice: 'Next battle was successfully destroyed.'
  #end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_next_battle
      @next_battle = NextBattle.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def next_battle_params
      params.require(:next_battle).permit(:result_no, :generate_no, :block_no, :e_no)
    end
end
