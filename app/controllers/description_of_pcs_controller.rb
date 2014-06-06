class DescriptionOfPcsController < ApplicationController
  before_action :set_description_of_pc, only: [:show, :edit, :update, :destroy]

  # GET /description_of_pcs
  # GET /description_of_pcs.json
  def index
    @description_of_pcs = DescriptionOfPc.all
  end

  # GET /description_of_pcs/1
  # GET /description_of_pcs/1.json
  def show
  end

  # GET /description_of_pcs/new
  def new
    @description_of_pc = DescriptionOfPc.new
  end

  # GET /description_of_pcs/1/edit
  def edit
  end

  # POST /description_of_pcs
  # POST /description_of_pcs.json
  def create
    @description_of_pc = DescriptionOfPc.new(description_of_pc_params)

    respond_to do |format|
      if @description_of_pc.save
        format.html { redirect_to @description_of_pc, notice: 'Description of pc was successfully created.' }
        format.json { render action: 'show', status: :created, location: @description_of_pc }
      else
        format.html { render action: 'new' }
        format.json { render json: @description_of_pc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /description_of_pcs/1
  # PATCH/PUT /description_of_pcs/1.json
  def update
    respond_to do |format|
      if @description_of_pc.update(description_of_pc_params)
        format.html { redirect_to @description_of_pc, notice: 'Description of pc was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @description_of_pc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /description_of_pcs/1
  # DELETE /description_of_pcs/1.json
  def destroy
    @description_of_pc.destroy
    respond_to do |format|
      format.html { redirect_to description_of_pcs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_description_of_pc
      @description_of_pc = DescriptionOfPc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def description_of_pc_params
      params.require(:description_of_pc).permit(:name, :description, :hdd_percent_of_price,
																								:motherboard_percent_of_price, :processor_percent_of_price,
																								:ram_percent_of_price, :systemBlock_percent_of_price,
																								:videoCard_percent_of_price)
    end
end
