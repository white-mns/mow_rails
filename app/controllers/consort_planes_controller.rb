class ConsortPlanesController < ApplicationController
  include MyUtility
  before_action :set_consort_plane, only: [:show, :edit, :update, :destroy]

  # GET /consort_planes
  def index
    param_set
    @count	= ConsortPlane.includes(:p_name).search(params[:q]).result.count()
    @search	= ConsortPlane.includes(:p_name).page(params[:page]).search(params[:q])
    @search.sorts = 'id asc' if @search.sorts.empty?
    @consort_planes	= @search.result.per(50)
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
    reference_number_assign(params, "consort_plane", "consort_plane_form")
    reference_text_assign(params, "consort_plane_name_name", "consort_plane_name_form")
    
    @p_name_form = params["p_name_form"]
    @result_no_form = params["result_no_form"]
    @generate_no_form = params["generate_no_form"]
    @e_no_form = params["e_no_form"]
    @consort_plane_form = params["consort_plane_form"]
    @consort_plane_name_form = params["consort_plane_name_form"]
  end
  # GET /consort_planes/1
  #def show
  #end

  # GET /consort_planes/new
  #def new
  #  @consort_plane = ConsortPlane.new
  #end

  # GET /consort_planes/1/edit
  #def edit
  #end

  # POST /consort_planes
  #def create
  #  @consort_plane = ConsortPlane.new(consort_plane_params)

  #  if @consort_plane.save
  #    redirect_to @consort_plane, notice: 'Consort plane was successfully created.'
  #  else
  #    render action: 'new'
  #  end
  #end

  # PATCH/PUT /consort_planes/1
  #def update
  #  if @consort_plane.update(consort_plane_params)
  #    redirect_to @consort_plane, notice: 'Consort plane was successfully updated.'
  #  else
  #    render action: 'edit'
  #  end
  #end

  # DELETE /consort_planes/1
  #def destroy
  #  @consort_plane.destroy
  #  redirect_to consort_planes_url, notice: 'Consort plane was successfully destroyed.'
  #end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consort_plane
      @consort_plane = ConsortPlane.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def consort_plane_params
      params.require(:consort_plane).permit(:result_no, :generate_no, :e_no, :consort_plane)
    end
end
