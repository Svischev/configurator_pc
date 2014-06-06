class SelectedOptionsOfPcsController < ApplicationController
  before_action :set_selected_options_of_pc, only: [:show, :edit, :update, :destroy]

  # GET /selected_options_of_pcs
  # GET /selected_options_of_pcs.json
  def index
    @selected_options_of_pcs = SelectedOptionsOfPc.all
  end

  # GET /selected_options_of_pcs/1
  # GET /selected_options_of_pcs/1.json
  def show
  end

  # GET /selected_options_of_pcs/new
  def new
    @selected_options_of_pc = SelectedOptionsOfPc.new
  end

  # GET /selected_options_of_pcs/1/edit
  def edit
  end

  # POST /selected_options_of_pcs
  # POST /selected_options_of_pcs.json
  def create
    @selected_options_of_pc = SelectedOptionsOfPc.new(selected_options_of_pc_params)

    respond_to do |format|
      if @selected_options_of_pc.save
        format.html { redirect_to @selected_options_of_pc, notice: 'Selected options of pc was successfully created.' }
        format.json { render action: 'show', status: :created, location: @selected_options_of_pc }
      else
        format.html { render action: 'new' }
        format.json { render json: @selected_options_of_pc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /selected_options_of_pcs/1
  # PATCH/PUT /selected_options_of_pcs/1.json
  def update
    respond_to do |format|
      if @selected_options_of_pc.update(selected_options_of_pc_params)
        format.html { redirect_to @selected_options_of_pc, notice: 'Selected options of pc was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @selected_options_of_pc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /selected_options_of_pcs/1
  # DELETE /selected_options_of_pcs/1.json
  def destroy
    @selected_options_of_pc.destroy
    respond_to do |format|
      format.html { redirect_to selected_options_of_pcs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_selected_options_of_pc
      @selected_options_of_pc = SelectedOptionsOfPc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def selected_options_of_pc_params
      params.require(:selected_options_of_pc).permit(:user_id, :description_of_pc_id, :price_range_id)
    end
end
