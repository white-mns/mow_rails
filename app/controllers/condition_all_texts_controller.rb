class ConditionAllTextsController < ApplicationController
  include MyUtility
  before_action :set_condition_all_text, only: [:show, :edit, :update, :destroy]

  # GET /condition_all_texts
  def index
    param_set
    @count	= ConditionAllText.notnil().includes(:p_name).search(params[:q]).result.count()
    @search	= ConditionAllText.notnil().includes(:p_name).page(params[:page]).search(params[:q])
    @search.sorts = 'id asc' if @search.sorts.empty?
    @condition_all_texts	= @search.result.per(50)
  end

  def param_set
    @latest_result = Name.maximum('result_no')

    params_clean(params)
    if !params["is_form"] then
        params["result_no_form"] ||= sprintf('%d',@latest_result)
    end
    
    reference_text_assign(params, "p_name_name", "p_name_form")
    reference_number_assign(params, "result_no", "result_no_form")
    reference_number_assign(params, "generate_no", "generate_no_form")
    reference_number_assign(params, "e_no", "e_no_form")
    reference_text_assign(params, "condition_text", "condition_text_form")
    
    @p_name_form = params["p_name_form"]
    @result_no_form = params["result_no_form"]
    @generate_no_form = params["generate_no_form"]
    @e_no_form = params["e_no_form"]
    @condition_text_form = params["condition_text_form"]
  end
  # GET /condition_all_texts/1
  #def show
  #end

  # GET /condition_all_texts/new
  #def new
  #  @condition_all_text = ConditionAllText.new
  #end

  # GET /condition_all_texts/1/edit
  #def edit
  #end

  # POST /condition_all_texts
  #def create
  #  @condition_all_text = ConditionAllText.new(condition_all_text_params)

  #  if @condition_all_text.save
  #    redirect_to @condition_all_text, notice: 'Condition all text was successfully created.'
  #  else
  #    render action: 'new'
  #  end
  #end

  # PATCH/PUT /condition_all_texts/1
  #def update
  #  if @condition_all_text.update(condition_all_text_params)
  #    redirect_to @condition_all_text, notice: 'Condition all text was successfully updated.'
  #  else
  #    render action: 'edit'
  #  end
  #end

  # DELETE /condition_all_texts/1
  #def destroy
  #  @condition_all_text.destroy
  #  redirect_to condition_all_texts_url, notice: 'Condition all text was successfully destroyed.'
  #end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_condition_all_text
      @condition_all_text = ConditionAllText.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def condition_all_text_params
      params.require(:condition_all_text).permit(:result_no, :generate_no, :e_no, :condition_text)
    end
end
