class RewardsController < ApplicationController
  include MyUtility
  before_action :set_reward, only: [:show, :edit, :update, :destroy]

  # GET /rewards
  def index
    param_set
    @count	= Reward.notnil().includes(:p_name, :block, :next_battle).search(params[:q]).result.count()
    @search	= Reward.notnil().includes(:p_name, :block, :next_battle).page(params[:page]).search(params[:q])
    @search.sorts = 'id asc' if @search.sorts.empty?
    @rewards	= @search.result.per(50)
  end
  
  # GET /reward/graph
  def graph
      index
      @library_param =  {backgroundColor: "#000", 
            vAxis: { baselineColor: "#F76161", textStyle: { color: "#eee"}, titleTextStyle: {color: "#eee"} },
            hAxis: { baselineColor: "#F76161", textStyle: { color: "#eee"}, titleTextStyle: {color: "#eee"} }}
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
    reference_number_assign(params, "e_no", "e_no_form")
    reference_number_assign(params, "battle_income", "battle_income_form")
    reference_number_assign(params, "add_income", "add_income_form")
    reference_number_assign(params, "attack", "attack_form")
    reference_number_assign(params, "support", "support_form")
    reference_number_assign(params, "defense", "defense_form")
    reference_number_assign(params, "defeat", "defeat_form")
    reference_number_assign(params, "selling", "selling_form")
    reference_number_assign(params, "sub_quest", "sub_quest_form")
    reference_number_assign(params, "enemy_caution", "enemy_caution_form")
    reference_number_assign(params, "colosseum_win", "colosseum_win_form")
    reference_number_assign(params, "fight_money", "fight_money_form")
    reference_number_assign(params, "total_income", "total_income_form")
    reference_number_assign(params, "ammunition_cost", "ammunition_cost_form")
    reference_number_assign(params, "preparation_deduction", "preparation_deduction_form")
    reference_number_assign(params, "preparation_cost", "preparation_cost_form")
    reference_number_assign(params, "union_cost", "union_cost_form")
    reference_number_assign(params, "prize", "prize_form")
    reference_number_assign(params, "union_interest", "union_interest_form")
    reference_number_assign(params, "parts_sell", "parts_sell_form")
    
    reference_number_assign(params, "block_block_no", "block_no_form")
    reference_number_assign(params, "next_battle_block_no", "next_block_no_form")
    
    @p_name_form = params["p_name_form"]
    @result_no_form = params["result_no_form"]
    @generate_no_form = params["generate_no_form"]
    @e_no_form = params["e_no_form"]
    @battle_income_form = params["battle_income_form"]
    @add_income_form = params["add_income_form"]
    @attack_form = params["attack_form"]
    @support_form = params["support_form"]
    @defense_form = params["defense_form"]
    @defeat_form = params["defeat_form"]
    @selling_form = params["selling_form"]
    @sub_quest_form = params["sub_quest_form"]
    @enemy_caution_form = params["enemy_caution_form"]
    @colosseum_win_form = params["colosseum_win_form"]
    @fight_money_form = params["fight_money_form"]
    @total_income_form = params["total_income_form"]
    @ammunition_cost_form = params["ammunition_cost_form"]
    @preparation_deduction_form = params["preparation_deduction_form"]
    @preparation_cost_form = params["preparation_cost_form"]
    @union_cost_form = params["union_cost_form"]
    @prize_form = params["prize_form"]
    @union_interest_form = params["union_interest_form"]
    @parts_sell_form = params["parts_sell_form"]
    
    @block_no_form = params["block_no_form"]
    @next_block_no_form = params["next_block_no_form"]

    @show_detail_1 = (!params["is_form"]) ? "1" : params["show_detail_1"]
    @show_detail_2 = params["show_detail_2"]
    @show_detail_3 = params["show_detail_3"]
    @show_detail_4 = params["show_detail_4"]
    @base_first    = (!params["is_form"]) ? "1" : "0"
  end
  # GET /rewards/1
  #def show
  #end

  # GET /rewards/new
  #def new
  #  @reward = Reward.new
  #end

  # GET /rewards/1/edit
  #def edit
  #end

  # POST /rewards
  #def create
  #  @reward = Reward.new(reward_params)

  #  if @reward.save
  #    redirect_to @reward, notice: 'Reward was successfully created.'
  #  else
  #    render action: 'new'
  #  end
  #end

  # PATCH/PUT /rewards/1
  #def update
  #  if @reward.update(reward_params)
  #    redirect_to @reward, notice: 'Reward was successfully updated.'
  #  else
  #    render action: 'edit'
  #  end
  #end

  # DELETE /rewards/1
  #def destroy
  #  @reward.destroy
  #  redirect_to rewards_url, notice: 'Reward was successfully destroyed.'
  #end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reward
      @reward = Reward.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def reward_params
      params.require(:reward).permit(:result_no, :generate_no, :e_no, :battle_income, :add_income, :attack, :support, :defense, :defeat, :selling, :sub_quest, :enemy_caution, :colosseum_win, :fight_money, :total_income, :ammunition_cost, :preparation_deduction, :preparation_cost, :union_cost, :prize, :union_interest, :parts_sell)
    end
end
