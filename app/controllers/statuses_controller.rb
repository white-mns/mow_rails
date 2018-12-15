class StatusesController < ApplicationController
  include MyUtility
  before_action :set_status, only: [:show, :edit, :update, :destroy]

  # GET /statuses
  def index
    param_set
    @count	= Status.notnil().includes(:p_name).search(params[:q]).result.count()
    @search	= Status.notnil().includes(:p_name).page(params[:page]).search(params[:q])
    @search.sorts = 'id asc' if @search.sorts.empty?
    @statuses	= @search.result.per(50)
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
    reference_number_assign(params, "acc_reward", "acc_reward_form")
    reference_number_assign(params, "rp", "rp_form")
    reference_number_assign(params, "gunshot", "gunshot_form")
    reference_number_assign(params, "struggle", "struggle_form")
    reference_number_assign(params, "reaction", "reaction_form")
    reference_number_assign(params, "control", "control_form")
    reference_number_assign(params, "preparation", "preparation_form")
    reference_number_assign(params, "fitly", "fitly_form")
    reference_number_assign(params, "funds", "funds_form")
    reference_number_assign(params, "exp", "exp_form")
    
    @p_name_form = params["p_name_form"]
    @result_no_form = params["result_no_form"]
    @generate_no_form = params["generate_no_form"]
    @e_no_form = params["e_no_form"]
    @acc_reward_form = params["acc_reward_form"]
    @rp_form = params["rp_form"]
    @gunshot_form = params["gunshot_form"]
    @struggle_form = params["struggle_form"]
    @reaction_form = params["reaction_form"]
    @control_form = params["control_form"]
    @preparation_form = params["preparation_form"]
    @fitly_form = params["fitly_form"]
    @funds_form = params["funds_form"]
    @exp_form = params["exp_form"]
  end
  # GET /statuses/1
  #def show
  #end

  # GET /statuses/new
  #def new
  #  @status = Status.new
  #end

  # GET /statuses/1/edit
  #def edit
  #end

  # POST /statuses
  #def create
  #  @status = Status.new(status_params)

  #  if @status.save
  #    redirect_to @status, notice: 'Status was successfully created.'
  #  else
  #    render action: 'new'
  #  end
  #end

  # PATCH/PUT /statuses/1
  #def update
  #  if @status.update(status_params)
  #    redirect_to @status, notice: 'Status was successfully updated.'
  #  else
  #    render action: 'edit'
  #  end
  #end

  # DELETE /statuses/1
  #def destroy
  #  @status.destroy
  #  redirect_to statuses_url, notice: 'Status was successfully destroyed.'
  #end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_status
      @status = Status.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def status_params
      params.require(:status).permit(:result_no, :generate_no, :e_no, :acc_reward, :rp, :gunshot, :struggle, :reaction, :control, :preparation, :fitly, :funds, :exp)
    end
end
