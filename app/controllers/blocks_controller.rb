class BlocksController < ApplicationController
  include MyUtility
  before_action :set_block, only: [:show, :edit, :update, :destroy]

  # GET /blocks
  def index
    param_set
    @count	= Block.includes(:p_name).search(params[:q]).result.count()
    @search	= Block.includes(:p_name).page(params[:page]).search(params[:q])
    @search.sorts = 'id asc' if @search.sorts.empty?
    @blocks	= @search.result.per(50)
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
    
    @p_name_form = params["p_name_form"]
    @result_no_form = params["result_no_form"]
    @generate_no_form = params["generate_no_form"]
    @block_no_form = params["block_no_form"]
    @e_no_form = params["e_no_form"]
  end
  # GET /blocks/1
  #def show
  #end

  # GET /blocks/new
  #def new
  #  @block = Block.new
  #end

  # GET /blocks/1/edit
  #def edit
  #end

  # POST /blocks
  #def create
  #  @block = Block.new(block_params)

  #  if @block.save
  #    redirect_to @block, notice: 'Block was successfully created.'
  #  else
  #    render action: 'new'
  #  end
  #end

  # PATCH/PUT /blocks/1
  #def update
  #  if @block.update(block_params)
  #    redirect_to @block, notice: 'Block was successfully updated.'
  #  else
  #    render action: 'edit'
  #  end
  #end

  # DELETE /blocks/1
  #def destroy
  #  @block.destroy
  #  redirect_to blocks_url, notice: 'Block was successfully destroyed.'
  #end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_block
      @block = Block.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def block_params
      params.require(:block).permit(:result_no, :generate_no, :block_no, :e_no)
    end
end
