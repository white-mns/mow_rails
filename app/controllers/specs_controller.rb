class SpecsController < ApplicationController
  include MyUtility
  before_action :set_spec, only: [:show, :edit, :update, :destroy]

  # GET /specs
  def index
    param_set
    @count	= Spec.includes(:p_name, :condition_all_text).search(params[:q]).result.count()
    @search	= Spec.includes(:p_name, :condition_all_text).page(params[:page]).search(params[:q])
    @search.sorts = 'id asc' if @search.sorts.empty?
    @specs	= @search.result.per(50)
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
    reference_number_assign(params, "ap", "ap_form")
    reference_number_assign(params, "en", "en_form")
    reference_number_assign(params, "en_recovery", "en_recovery_form")
    reference_number_assign(params, "movement", "movement_form")
    reference_number_assign(params, "weight", "weight_form")
    reference_number_assign(params, "turning_speed", "turning_speed_form")
    reference_number_assign(params, "jump", "jump_form")
    reference_number_assign(params, "max_power", "max_power_form")
    reference_number_assign(params, "search", "search_form")
    reference_number_assign(params, "precision", "precision_form")
    reference_number_assign(params, "punding", "punding_form")
    reference_number_assign(params, "aerosol", "aerosol_form")
    reference_number_assign(params, "pysics", "pysics_form")
    reference_number_assign(params, "spirit", "spirit_form")
    reference_number_assign(params, "particle", "particle_form")
    reference_number_assign(params, "flame", "flame_form")
    reference_number_assign(params, "electric", "electric_form")
    reference_number_assign(params, "loading", "loading_form")
    reference_number_assign(params, "max_loading", "max_loading_form")
    reference_text_assign(params, "condition_all_text_condition_text", "condition_text_form")
    
    @p_name_form = params["p_name_form"]
    @result_no_form = params["result_no_form"]
    @generate_no_form = params["generate_no_form"]
    @e_no_form = params["e_no_form"]
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
  end
  # GET /specs/1
  #def show
  #end

  # GET /specs/new
  #def new
  #  @spec = Spec.new
  #end

  # GET /specs/1/edit
  #def edit
  #end

  # POST /specs
  #def create
  #  @spec = Spec.new(spec_params)

  #  if @spec.save
  #    redirect_to @spec, notice: 'Spec was successfully created.'
  #  else
  #    render action: 'new'
  #  end
  #end

  # PATCH/PUT /specs/1
  #def update
  #  if @spec.update(spec_params)
  #    redirect_to @spec, notice: 'Spec was successfully updated.'
  #  else
  #    render action: 'edit'
  #  end
  #end

  # DELETE /specs/1
  #def destroy
  #  @spec.destroy
  #  redirect_to specs_url, notice: 'Spec was successfully destroyed.'
  #end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spec
      @spec = Spec.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def spec_params
      params.require(:spec).permit(:result_no, :generate_no, :e_no, :ap, :en, :en_recovery, :movement, :weight, :turning_speed, :jump, :max_power, :search, :precision, :punding, :aerosol, :pysics, :spirit, :particle, :flame, :electric, :loading, :max_loading)
    end
end
