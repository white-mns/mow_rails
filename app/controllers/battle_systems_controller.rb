class BattleSystemsController < ApplicationController
  include MyUtility
  before_action :set_battle_system, only: [:show, :edit, :update, :destroy]

  # GET /battle_systems
  def index
    param_set
    @count	= BattleSystem.includes(:p_name, :battle_system_name).search(params[:q]).result.count()
    @search	= BattleSystem.includes(:p_name, :battle_system_name).page(params[:page]).search(params[:q])
    @search.sorts = 'id asc' if @search.sorts.empty?
    @battle_systems	= @search.result.per(50)
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
    reference_text_assign(params, "battle_system_name_name", "battle_system_form")
    
    @p_name_form = params["p_name_form"]
    @result_no_form = params["result_no_form"]
    @generate_no_form = params["generate_no_form"]
    @e_no_form = params["e_no_form"]
    @battle_system_form = params["battle_system_form"]
  end
  # GET /battle_systems/1
  #def show
  #end

  # GET /battle_systems/new
  #def new
  #  @battle_system = BattleSystem.new
  #end

  # GET /battle_systems/1/edit
  #def edit
  #end

  # POST /battle_systems
  #def create
  #  @battle_system = BattleSystem.new(battle_system_params)

  #  if @battle_system.save
  #    redirect_to @battle_system, notice: 'Battle system was successfully created.'
  #  else
  #    render action: 'new'
  #  end
  #end

  # PATCH/PUT /battle_systems/1
  #def update
  #  if @battle_system.update(battle_system_params)
  #    redirect_to @battle_system, notice: 'Battle system was successfully updated.'
  #  else
  #    render action: 'edit'
  #  end
  #end

  # DELETE /battle_systems/1
  #def destroy
  #  @battle_system.destroy
  #  redirect_to battle_systems_url, notice: 'Battle system was successfully destroyed.'
  #end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_battle_system
      @battle_system = BattleSystem.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def battle_system_params
      params.require(:battle_system).permit(:result_no, :generate_no, :e_no, :battle_system)
    end
end
