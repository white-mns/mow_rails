class ItemsController < ApplicationController
  include MyUtility
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  # GET /items
  def index
    param_set
    @count	= Item.includes(:p_name, :kind_name, :orig_name_name, :weapon_element_name, :fuka_1_name, :fuka_2_name).search(params[:q]).result.count()
    @search	= Item.includes(:p_name, :kind_name, :orig_name_name, :weapon_element_name, :fuka_1_name, :fuka_2_name).page(params[:page]).search(params[:q])
    @search.sorts = 'id asc' if @search.sorts.empty?
    @items	= @search.result.per(50)
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
    reference_number_assign(params, "i_no", "i_no_form")
    reference_number_assign(params, "name", "name_form")
    reference_text_assign(params, "kind_name", "kind_form")
    reference_number_assign(params, "unique_1", "unique_1_form")
    reference_number_assign(params, "unique_2", "unique_2_form")
    reference_number_assign(params, "ap", "ap_form")
    reference_number_assign(params, "spending_en", "spending_en_form")
    reference_number_assign(params, "value", "value_form")
    reference_number_assign(params, "ammunition_cost", "ammunition_cost_form")
    reference_number_assign(params, "weight", "weight_form")
    reference_number_assign(params, "turning_speed", "turning_speed_form")
    reference_number_assign(params, "guard_elemental", "guard_elemental_form")
    reference_number_assign(params, "guard_value", "guard_value_form")
    reference_number_assign(params, "precision", "precision_form")
    reference_number_assign(params, "punding", "punding_form")
    reference_number_assign(params, "aerosol", "aerosol_form")
    reference_number_assign(params, "bullet", "bullet_form")
    reference_number_assign(params, "loading", "loading_form")
    reference_text_assign(params, "weapon_element_name", "weapon_element_form")
    reference_number_assign(params, "add_abnormity", "add_abnormity_form")
    reference_number_assign(params, "strength", "strength_form")
    reference_number_assign(params, "gunshot", "gunshot_form")
    reference_number_assign(params, "struggle", "struggle_form")
    reference_number_assign(params, "reaction", "reaction_form")
    reference_number_assign(params, "control", "control_form")
    reference_number_assign(params, "preparation", "preparation_form")
    reference_number_assign(params, "fitly", "fitly_form")
    reference_number_assign(params, "equip", "equip_form")
    reference_text_assign(params, "fuka_1_name_name", "fuka_1_form")
    reference_text_assign(params, "fuka_2_name_name", "fuka_2_form")
    reference_text_assign(params, "orig_name_name_name", "orig_name_form")
    reference_number_assign(params, "drunkenness", "drunkenness_form")
    
    @p_name_form = params["p_name_form"]
    @result_no_form = params["result_no_form"]
    @generate_no_form = params["generate_no_form"]
    @e_no_form = params["e_no_form"]
    @i_no_form = params["i_no_form"]
    @name_form = params["name_form"]
    @kind_form = params["kind_form"]
    @unique_1_form = params["unique_1_form"]
    @unique_2_form = params["unique_2_form"]
    @ap_form = params["ap_form"]
    @spending_en_form = params["spending_en_form"]
    @value_form = params["value_form"]
    @ammunition_cost_form = params["ammunition_cost_form"]
    @weight_form = params["weight_form"]
    @turning_speed_form = params["turning_speed_form"]
    @guard_elemental_form = params["guard_elemental_form"]
    @guard_value_form = params["guard_value_form"]
    @precision_form = params["precision_form"]
    @punding_form = params["punding_form"]
    @aerosol_form = params["aerosol_form"]
    @bullet_form = params["bullet_form"]
    @loading_form = params["loading_form"]
    @weapon_element_form = params["weapon_element_form"]
    @add_abnormity_form = params["add_abnormity_form"]
    @strength_form = params["strength_form"]
    @gunshot_form = params["gunshot_form"]
    @struggle_form = params["struggle_form"]
    @reaction_form = params["reaction_form"]
    @control_form = params["control_form"]
    @preparation_form = params["preparation_form"]
    @fitly_form = params["fitly_form"]
    @equip_form = params["equip_form"]
    @fuka_1_form = params["fuka_1_form"]
    @fuka_2_form = params["fuka_2_form"]
    @orig_name_form = params["orig_name_form"]
    @drunkenness_form = params["drunkenness_form"]
  end
  # GET /items/1
  #def show
  #end

  # GET /items/new
  #def new
  #  @item = Item.new
  #end

  # GET /items/1/edit
  #def edit
  #end

  # POST /items
  #def create
  #  @item = Item.new(item_params)

  #  if @item.save
  #    redirect_to @item, notice: 'Item was successfully created.'
  #  else
  #    render action: 'new'
  #  end
  #end

  # PATCH/PUT /items/1
  #def update
  #  if @item.update(item_params)
  #    redirect_to @item, notice: 'Item was successfully updated.'
  #  else
  #    render action: 'edit'
  #  end
  #end

  # DELETE /items/1
  #def destroy
  #  @item.destroy
  #  redirect_to items_url, notice: 'Item was successfully destroyed.'
  #end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def item_params
      params.require(:item).permit(:result_no, :generate_no, :e_no, :i_no, :name, :kind, :unique_1, :unique_2, :ap, :spending_en, :value, :ammunition_cost, :weight, :turning_speed, :guard_elemental, :guard_value, :precision, :punding, :aerosol, :bullet, :loading, :weapon_element, :add_abnormity, :strength, :gunshot, :struggle, :reaction, :control, :preparation, :fitly, :equip, :fuka_1, :fuka_2, :orig_name, :drunkenness)
    end
end
